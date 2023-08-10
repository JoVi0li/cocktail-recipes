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
                
            List(viewModel.cocktails) {cocktail in
                NavigationLink {
                    CocktailDetailsView(cocktail: cocktail)
                } label: {
                    Text(cocktail.name)
                        .padding(.vertical, 8)
                }
                    
            }
            .navigationTitle(Text("Cocktail Recipes"))
            .listStyle(.automatic)
        }
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailListView()
    }
}
