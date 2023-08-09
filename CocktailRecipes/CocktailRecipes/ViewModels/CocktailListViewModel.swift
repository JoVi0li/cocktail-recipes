//
//  CocktailListViewModel.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import Foundation
import Combine

class CocktailListViewModel: ObservableObject {
    @Published var cocktails: [Cocktail] = []
    @Published var searchInput: String = ""
    
    func searchCocktailByName() -> Void {
        var cocktailsDictionary: [String: [Cocktail]] = [:]
        let baseURL = "https://www.thecocktaildb.com/api/json/v1/1/"
        var err: Error?
        guard let finalURL = URL(string: baseURL + "search.php?s=\(searchInput)") else { return }
        
        URLSession.shared.fetchData(url: finalURL) { [weak self] result in
            switch result {
            case .success(let data):
                print("Entrou no .success")
                guard let data = data else { return }
                print(data)
                do {
                    cocktailsDictionary = try JSONDecoder().decode([String: [Cocktail]].self, from: data)
                    self?.cocktails = cocktailsDictionary["drinks"] ?? []
                } catch {
                    print(error)
                    err = error
                }
            case .failure(let error):
                err = error
                
            }
        }
        
        if let error = err {
            print(error)
        }
        
    }
}
