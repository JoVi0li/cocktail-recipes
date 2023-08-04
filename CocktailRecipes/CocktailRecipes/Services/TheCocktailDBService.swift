//
//  TheCockTailDBService.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import Foundation

struct TheCocktailDBService: CocktailRecipesServiceProtocol {
    let baseURL = "www.thecocktaildb.com/api/json/v1/1/"
    
    func searchCocktailByName(_ name: String) async throws -> [Cocktail] {
        var err: Error?
        var cocktails: [Cocktail] = []
        guard let finalURL = URL(string: baseURL + "search.php?s=\(name)") else { return [] }
        
        URLSession.shared.fetchData(url: finalURL) { result in
            switch result {
            case .success(let data):
                guard let data = data else { return }
                do {
                    cocktails = try JSONDecoder().decode([Cocktail].self, from: data)
                } catch {
                    err = error
                }
            case .failure(let error):
                err = error
                
            }
        }
        
        if let error = err {
            throw error
        }
        
        return cocktails
    }
}
