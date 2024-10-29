//
//  MapView.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .navigationBarTitle("Карта")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                BackButton()
            }
        }
    }
}

#Preview {
    NavigationStack {
        MapView()
    }
    
}
