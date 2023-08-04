//
//  RecipeListViewModelProtocol.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import Foundation

protocol CocktailRecipesServiceProtocol {
    func searchCocktailByName(_ name: String) async throws -> [Cocktail]
    // func searchCocktailByIngredient(_ ingredient: String) async throws -> [Cocktail]
}
