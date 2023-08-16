//
//  CocktailDetailsView.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 10/08/23.
//

import SwiftUI

struct CocktailDetailsView: View {
    let cocktail: Cocktail
    var body: some View {
        NavigationView {
            VStack( alignment: .leading) {
                Label("Category", systemImage: "wineglass")
                Text(cocktail.category)
                    .font(.headline)
                    .padding()
                
                Divider()
                    .padding(.bottom)
                    
                Label("Prepare instructions", systemImage: "info.circle")
                Text(cocktail.prepareInstructions)
                    .font(.headline)
                    .padding()
                    
                Spacer()
                
            }
            .padding()
        }
        .navigationTitle(Text(cocktail.name))
    }
}

struct CocktailDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetailsView(cocktail: Cocktail(id: "01", name: "Margarita", category: "Fresh", prepareInstructions: "Put pinga", image: "ain messi"))
    }
}
