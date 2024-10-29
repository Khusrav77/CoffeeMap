//
//  NetworkError.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from server"
    case invalidData = "Invalid data"
}
