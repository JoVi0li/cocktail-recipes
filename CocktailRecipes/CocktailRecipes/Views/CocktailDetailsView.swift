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
        Text(cocktail.name)
            .font(.title)
    }
}

struct CocktailDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetailsView(cocktail: Cocktail(id: "01", name: "Margarita", category: "Fresh", prepareInstructions: "Put pinga", image: "ain messi"))
    }
}
