//
//  Recipe.swift
//  Recipes
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

struct Recipe {
  let name: String
  let image: UIImage
  let description: String
  let rating: Int
  
  static func getRecipes() -> [Recipe] {
    return [
      Recipe(name: "Classics Deviled Eggs", image: UIImage(named: "classic-deviled-eggs.jpeg")!,
             description: """
                          Place eggs in a single layer in a saucepan and cover with enough water that there's 1 1/2 inches of water above the eggs.
                          Heat on high until water begins to boil, then cover, turn the heat to low, and cook for 1 minute.
                          Remove from heat and leave covered for 14 minutes, then rinse under cold water continuously for 1 minute.
                          
                          Crack egg shells and carefully peel under cool running water. Gently dry with paper towels.
                          Slice the eggs in half lengthwise, removing yolks to a medium bowl, and placing the whites on a serving platter.
                          Mash the yolks into a fine crumble using a fork. Add mayonnaise, vinegar, mustard, salt, and pepper, and mix well.

                          Evenly disperse heaping teaspoons of the yolk mixture into the egg whites. Sprinkle with paprika and serve.
                          """,
             rating: 4),
      Recipe(name: "Perfect Roast Chicken", image: UIImage(named: "perfect-roast-chicken.jpeg")!,
             description: """
                          Preheat the oven to 425 degrees F.

                          Remove the chicken giblets. Rinse the chicken inside and out. Remove any excess fat and leftover pin feathers and pat the
                          outside dry. Liberally salt and pepper the inside of the chicken. Stuff the cavity with the bunch of thyme, both halves of lemon,
                          and all the garlic. Brush the outside of the chicken with the butter and sprinkle again with salt and pepper. Tie the legs together
                          with kitchen string and tuck the wing tips under the body of the chicken. Place the onions, carrots, and fennel in a roasting pan.
                          Toss with salt, pepper, 20 sprigs of thyme, and olive oil. Spread around the bottom of the roasting pan and place the chicken on top.

                          Roast the chicken for 1 1/2 hours, or until the juices run clear when you cut between a leg and thigh. Remove the chicken
                          and vegetables to a platter and cover with aluminum foil for about 20 minutes. Slice the chicken onto a platter and serve it with the vegetables.
                          """,
             rating: 5),
      Recipe(name: "French Toast", image: UIImage(named: "french-toast")!,
             description: """
                          In a small bowl, combine, cinnamon, nutmeg, and sugar and set aside briefly.

                          In a 10-inch or 12-inch skillet, melt butter over medium heat. Whisk together cinnamon mixture, eggs, milk, and vanilla and pour into a
                          shallow container such as a pie plate. Dip bread in egg mixture. Fry slices until golden brown, then flip to cook the other side. Serve with syrup.
                          """,
             rating: 5),
      Recipe(name: "Roasted Brussels Sprouts", image: UIImage(named: "roated-brussels-sprouts.jpeg")!,
             description: """
                          Preheat oven to 400 degrees F.

                          Cut off the brown ends of the Brussels sprouts and pull off any yellow outer leaves. Mix them in a bowl with the olive oil, salt and pepper.
                          Pour them on a sheet pan and roast for 35 to 40 minutes, until crisp on the outside and tender on the inside. Shake the pan from time to time
                          to brown the sprouts evenly. Sprinkle with more kosher salt ( I like these salty like French fries), and serve immediately.
                          """,
             rating: 5),
      Recipe(name: "Beef Bourguignon", image: UIImage(named: "beef-bourguignon.jpeg")!,
             description: """
                          Preheat the oven to 250 degrees F.

                          Heat the olive oil in a large Dutch oven. Add the bacon and cook over medium heat for 10 minutes, stirring occasionally, until the bacon is
                          lightly browned. Remove the bacon with a slotted spoon to a large plate.

                          Dry the beef cubes with paper towels and then sprinkle them with salt and pepper. In batches in single layers, sear the beef in the hot oil
                          for 3 to 5 minutes, turning to brown on all sides. Remove the seared cubes to the plate with the bacon and continue searing until all the
                          beef is browned. Set aside.

                          Toss the carrots, and onions, 1 tablespoon of salt and 2 teaspoons of pepper in the fat in the pan and cook for 10 to 15 minutes, stirring
                          occasionally, until the onions are lightly browned. Add the garlic and cook for 1 more minute. Add the Cognac, stand back, and ignite with a
                          match to burn off the alcohol. Put the meat and bacon back into the pot with the juices. Add the bottle of wine plus enough beef broth to almost
                          cover the meat. Add the tomato paste and thyme. Bring to a simmer, cover the pot with a tight-fitting lid and place it in the oven for about
                          1 1/4 hours or until the meat and vegetables are very tender when pierced with a fork. Combine 2 tablespoons of butter and the flour with a fork
                          and stir into the stew. Add the frozen onions. Saute the mushrooms in 2 tablespoons of butter for 10 minutes until lightly browned and then add to
                          the stew. Bring the stew to a boil on top of the stove, then lower the heat and simmer for 15 minutes. Season to taste. To serve, toast the bread
                          in the toaster or oven. Rub each slice on 1 side with a cut clove of garlic. For each serving, spoon the stew over a slice of bread
                          and sprinkle with parsley.
                          """,
             rating: 5),
      Recipe(name: "Shepherds Pie", image: UIImage(named: "shepherds-pie.jpeg")!,
             description: """
                          Peel the potatoes and cut into 1/2-inch dice. Place in a medium saucepan and cover with cold water. Set over high heat, cover and bring to a boil.
                          Once boiling, uncover, decrease the heat to maintain a simmer and cook until tender and easily crushed with tongs, approximately 10 to 15 minutes.
                          Place the half-and-half and butter into a microwave-safe container and heat in the microwave until warmed through, about 35 seconds.
                          Drain the potatoes in a colander and then return to the saucepan. Mash the potatoes and then add the half and half, butter, salt and pepper and
                          continue to mash until smooth. Stir in the yolk until well combined.

                          Preheat the oven to 400 degrees F.

                          While the potatoes are cooking, prepare the filling. Place the canola oil into a 12-inch saute pan and set over medium high heat. Once the oil shimmers,
                          add the onion and carrots and saute just until they begin to take on color, approximately 3 to 4 minutes. Add the garlic and stir to combine.
                          Add the lamb, salt and pepper and cook until browned and cooked through, approximately 3 minutes. Sprinkle the meat with the flour and toss to coat,
                          continuing to cook for another minute. Add the tomato paste, chicken broth, Worcestershire, rosemary, thyme, and stir to combine. Bring to a boil,
                          reduce the heat to low, cover and simmer slowly 10 to 12 minutes or until the sauce is thickened slightly.

                          Add the corn and peas to the lamb mixture and spread evenly into an 11 by 7-inch glass baking dish. Top with the mashed potatoes, starting around the
                          edges to create a seal to prevent the mixture from bubbling up and smooth with a rubber spatula. Place on a parchment lined half sheet pan on the middle
                          rack of the oven and bake for 25 minutes or just until the potatoes begin to brown. Remove to a cooling rack for at least 15 minutes before serving.
                          """,
             rating: 5),
      Recipe(name: "Garlic Roasted Potato", image: UIImage(named: "garlic-roated-potatoes.jpeg")!,
             description: """
                          Preheat the oven to 400 degrees F.

                          Cut the potatoes in half or quarters and place in a bowl with the olive oil, salt, pepper, and garlic; toss until the potatoes are well coated.
                          Transfer the potatoes to a sheet pan and spread out into 1 layer. Roast in the oven for 45 minutes to 1 hour or until browned and crisp.
                          Flip twice with a spatula during cooking in order to ensure even browning.

                          Remove the potatoes from the oven, toss with parsley, season to taste, and serve hot.
                          """,
             rating: 5),
      Recipe(name: "Oven Baked Salmon", image: UIImage(named: "oven-baked-salmon.jpeg")!,
             description: """
                          Preheat the oven to 450 degrees F.

                          Season salmon with salt and pepper. Place salmon, skin side down, on a non-stick baking sheet or in a non-stick pan with an oven-proof handle.
                          Bake until salmon is cooked through, about 12 to 15 minutes. Serve with the Toasted Almond Parsley Salad and squash, if desired.

                          Toasted Almond Parsley Salad: Mince the shallot and add to a small bowl. Pour the vinegar over the shallots and add a pinch of salt. Let sit for 30 minutes.

                          Roughly chop the capers, parsley and almonds and add to the shallots. Add the olive oil, tasting as you go. Mix again and adjust the seasonings.
                          """,
             rating: 5),
      Recipe(name: "Simple Perfect Chili", image: UIImage(named: "simple-perfect-chili.jpeg")!,
             description: """
                          Place the ground beef in a large pot and throw in the garlic. Cook over medium heat until browned. Drain off the excess fat, and then pour in the
                          tomato sauce, chili powder, cumin, oregano, salt and cayenne. Stir together well, cover, and then reduce the heat to low. Simmer for 1 hour,
                          stirring occasionally. If the mixture becomes overly dry, add 1/2 cup water at a time as needed.

                          After an hour, place the masa harina in a small bowl. Add 1/2 cup water and stir together with a fork. Dump the masa mixture into the chili.
                          Stir together well, and then taste and adjust the seasonings. Add more masa paste and/or water to get the chili to your preferred consistency,
                          or to add more corn flavor. Add the beans and simmer for 10 minutes. Serve with shredded Cheddar, chopped onions, tortilla chips and lime wedges.
                          """,
             rating: 4),
      Recipe(name: "Perfect Pot Roast", image: UIImage(named: "perfect-pot-roast.jpeg")!,
             description: """
                          Preheat the oven to 275 degrees F.

                          Generously salt and pepper the chuck roast.

                          Heat the olive oil in large pot or Dutch oven over medium-high heat. Add the halved onions to the pot, browning them on both sides.
                          Remove the onions to a plate.

                          Throw the carrots into the same very hot pot and toss them around a bit until slightly browned, about a minute or so. Reserve the carrots with the onions.

                          If needed, add a bit more olive oil to the very hot pot. Place the meat in the pot and sear it for about a minute on all sides until it is nice
                          and brown all over. Remove the roast to a plate.

                          With the burner still on high, use either red wine or beef broth (about 1 cup) to deglaze the pot, scraping the bottom with a whisk.
                          Place the roast back into the pot and add enough beef stock to cover the meat halfway.

                          Add in the onions and the carrots, along with the fresh herbs.

                          Put the lid on, then roast for 3 hours for a 3-pound roast. For a 4 to 5-pound roast, plan on 4 hours. The roast is ready when it's fall-apart tender.
                          """,
             rating: 5),
    ]
  }
}
