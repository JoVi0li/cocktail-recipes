//
//  CocktailListViewModel.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import Foundation

class CocktailListViewModel: ObservableObject {
    let theCocktailDBService: CocktailRecipesServiceProtocol
    
    @Published var cocktails: [Cocktail] = []
    @Published var searchInput: String = ""
    
    init(theCocktailDBService: CocktailRecipesServiceProtocol) {
        self.theCocktailDBService = theCocktailDBService
    }

    
    func searchCocktailByName() async -> Void {
        do {
            let result = try await theCocktailDBService.searchCocktailByName(self.searchInput)
            cocktails = result
        } catch {
            print(error)
        }
    }
}
