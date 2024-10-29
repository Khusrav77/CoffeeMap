//
//  Untitled.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//
import Foundation

protocol MenuInteractorProtocol {
    func fetchMenu() async throws -> [Product]
}

class MenuInteractor: MenuInteractorProtocol {
    private let networkManager: NetworkManagerProtocol
    
    
    init(networkManager: NetworkManagerProtocol = NetworkManager()) {
        self.networkManager = networkManager
    }
    
    
    func fetchMenu() async throws -> [Product] {
        return try await networkManager.fetchData(from: URLConstants.menuURL)
    }
    
    
   
}
