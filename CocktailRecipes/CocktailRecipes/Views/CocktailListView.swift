//
//  RecipesListView.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import SwiftUI

struct CocktailListView: View {
    @StateObject private var viewModel = CocktailListViewModel()
    
    var body: some View {
        NavigationStack {
            TextField("Search a cocktail", text: $viewModel.searchInput)
                .textFieldStyle(.roundedBorder)
                .padding()
                .onSubmit {
                    viewModel.searchCocktailByName()
                }
                .autocorrectionDisabled(true)
                
            
            List {
                ForEach(viewModel.cocktails) { cocktail in
                    Text(cocktail.name)
                }
            }
            .navigationTitle(Text("Cocktail Recipes"))
        }
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailListView()
    }
}
