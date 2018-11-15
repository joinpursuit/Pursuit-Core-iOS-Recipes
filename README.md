## Recipes App
Recipe app built using UITableView via Storyboard. A custom cell will also be created within our storyboard scene for the table view. 

## Model 

The recipe model will have name, image, description properties of a recipe. 

```swift 
struct Recipe {
  // properties 
  let name: String 
  let image: UIImage
  let description: String 
  let rating: Int 
 
  // methods
  static func getRecipes() -> [Recipe] {
    var recipes = [Recipe]()
    //.....create instances here 
    return recipes 
  }
}
```

## View 

Along with the required view controller scenes, we will have a custom cell called **RecipeCell** that will by stylized in the Main.Storyboard scene. 

## Controller 

There will be a RecipeViewController and a second view contorller named RecipeDetailController that when selected will show more details of a recipe. Both controllers will be embedded in a NavigationController stack. 
