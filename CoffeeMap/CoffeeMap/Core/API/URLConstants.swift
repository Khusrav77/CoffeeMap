//
//  URLConstants.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import Foundation

struct URLConstants {
    static let baseURL = "http://147.78.66.203:3210/"
    static let authURL = baseURL + "/auth/register"
    static let logintURL = baseURL + "//auth/login"
    static let locationURL = baseURL + "/locations"
    static let menuURL = baseURL + "/location/{id}/menu"
}
