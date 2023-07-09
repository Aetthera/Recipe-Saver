//
//  HomeView.swift
//  Recipe Saver
//
//  Created by Alena Belova  on 2023-07-07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(Recipe.all) { recipe in
                Text(recipe.name)
                    .navigationTitle("My Recipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
