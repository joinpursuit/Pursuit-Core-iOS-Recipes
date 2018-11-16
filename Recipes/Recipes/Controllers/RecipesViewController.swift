//
//  ViewController.swift
//  Recipes
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var searchBar: UISearchBar!
  
  private var refreshControl: UIRefreshControl!
  
  // data from our Model (Recipe)
  private var recipes = [Recipe]() {
    // property observing
    didSet {
      // reload table view
      tableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    recipes = Recipe.getRecipes()
    setupProtocols()
    setupRefreshControl()
  }
  
  private func setupProtocols() {
    // step 3: set delegate or datasource to self
    tableView.dataSource = self
    tableView.delegate = self
    searchBar.delegate = self
  }
  
  private func setupRefreshControl() {
    refreshControl = UIRefreshControl()
    tableView.refreshControl = refreshControl
    refreshControl.addTarget(self, action: #selector(fetchRecipes), for: .valueChanged)
  }
  
  @objc private func fetchRecipes() {
    refreshControl.endRefreshing()
    recipes = Recipe.getRecipes()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let indexPath = tableView.indexPathForSelectedRow,
      let recipeDetailViewController = segue.destination as? RecipeDetailController else { return }
    let recipe = recipes[indexPath.row]
    
    // passing the recipe data to the recipeDetailViewController
    recipeDetailViewController.recipe = recipe
  }
}

// MARK:- UITableViewDataSource
extension RecipesViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return recipes.count // 10
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeCell else { fatalError("recipe cell not found") }
    
    // how do we get access to the current recipe?
    let recipe = recipes[indexPath.row]
    cell.recipeImage.image = recipe.image
    cell.recipeName.text = recipe.name
    return cell
  }
}

extension RecipesViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 400
  }
}

// step 1: conform to protocol
extension RecipesViewController: UISearchBarDelegate {
  // step 2: implements methods as needed or required if available
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    // dismiss the keyboard
    searchBar.resignFirstResponder()
    guard let searchText = searchBar.text else { return }
    
    // user can enter "classic" or "egg"
    // results should return "Classic Deviled Eggs"
    recipes = Recipe.getRecipes().filter { $0.name.lowercased().contains(searchText.lowercased()) }
  }
}
