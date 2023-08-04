//
//  RecipeModel.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import Foundation

struct Cocktail: Identifiable, Decodable {
    let id: UUID
    let name: String
    let category: String
    let prepareInstructions: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case id = "idDrink"
        case name = "strDrink"
        case category = "strCategory"
        case prepareInstructions = "strInstructions"
        case image = "strDrinkThumb"
    }
}
