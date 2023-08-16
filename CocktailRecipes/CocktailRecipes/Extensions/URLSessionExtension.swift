//
//  URLSessionExtension.swift
//  CocktailRecipes
//
//  Created by João Vitor de Oliveira da Silva on 03/08/23.
//

import Foundation
extension URLSession {
    func fetchData(url: URL, completion: @escaping (Result<Data?, Error>) -> Void) -> Void {
        self.dataTask(with: url) { (data, response, error) in
            if let error = error {
              completion(.failure(error))
            }
            
            guard let data = data else { return }
            
            completion(.success(data))
            
        }.resume()
    }
}
