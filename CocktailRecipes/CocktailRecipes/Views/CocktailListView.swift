//
//  RecipesListView.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import SwiftUI

struct CocktailListView: View {
    @StateObject private var viewModel = CocktailListViewModel(theCocktailDBService: TheCocktailDBService())
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.cocktails) { cocktail in
                    Text(cocktail.name)
                }
            }
            .navigationTitle(Text("Cocktail Recipes"))
        }
        .searchable(text: $viewModel.searchInput)
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailListView()
    }
}
