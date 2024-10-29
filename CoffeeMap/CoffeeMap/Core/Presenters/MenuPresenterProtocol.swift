//
//  MenuPresenterProtocol.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/30/24.
//

import Foundation

protocol MenuPresenterProtocol: ObservableObject {
    func presentMenu()
    var products: [Product] { get }
    var message: String? { get }
}

class MenuPresenter: MenuPresenterProtocol {
    @Published private(set) var products: [Product] = []
    @Published private(set) var message: String? = nil
    private let interactor: MenuInteractorProtocol
    
    
    init(interactor: MenuInteractorProtocol) {
        self.interactor = interactor
    }
    
    
    func presentMenu() {
        Task {
            do {
                let products = try await interactor.fetchMenu()
                DispatchQueue.main.async {
                    self.products = products
                }
                
            } catch {
                self.message = "Failed to load products: \(error.localizedDescription)"
            }
        }
    }
}
