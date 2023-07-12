//
//  CategoryView.swift
//  Recipe Saver
//
//  Created by Alena Belova  on 2023-07-10.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
     
    var category: Category
    
    //Computerd property
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{$0.category == category.rawValue}
    }
    
    init(category: Category) {
            self.category = category
        }
    
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        }
        .navigationBarTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
