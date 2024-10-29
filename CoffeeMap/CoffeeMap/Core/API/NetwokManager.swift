//
//  NetwokManager.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import Foundation

protocol NetworkManagerProtocol {
    func fetchData(from urlString: String) async throws -> [Product]
}

final class NetworkManager: NetworkManagerProtocol {
    
    func fetchData(from urlString: String) async throws -> [Product] {
        guard let url = URL(string: urlString) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            return try JSONDecoder().decode([Product].self, from: data)
            
        } catch {
            throw NetworkError.invalidData
        }
        
    }
}
