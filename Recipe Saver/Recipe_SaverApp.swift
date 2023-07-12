//
//  Recipe_SaverApp.swift
//  Recipe Saver
//
//  Created by Alena Belova  on 2023-07-07.
//

import SwiftUI

@main
struct Recipe_SaverApp: App {
    @StateObject var recipesViewModel =  RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
