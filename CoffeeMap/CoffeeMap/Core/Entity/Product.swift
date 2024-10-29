//
//  Product.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import Foundation

struct Product: Identifiable, Decodable {
    let id: Int
    let title: String
    let subtitle: String
    let image: String?
    let price: Int
}
