//
//  RecipesViewModel.swift
//  Recipe Saver
//
//  Created by Alena Belova  on 2023-07-10.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
