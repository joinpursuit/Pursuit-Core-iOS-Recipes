//
//  RecipeDetailController.swift
//  Recipes
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class RecipeDetailController: UIViewController {
   
  // outlets
  @IBOutlet weak var recipeImage: UIImageView!
  @IBOutlet weak var recipeName: UILabel!
  @IBOutlet weak var recipeDescription: UITextView!
  
  // we need the selected cell's data (recipe)
  var recipe: Recipe?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateRecipeUI()
  }
  
  private func updateRecipeUI() {
    recipeImage.image = recipe?.image
    recipeName.text = recipe?.name
    recipeDescription.text = recipe?.description
  }
  
}
