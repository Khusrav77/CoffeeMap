//
//  MainView.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(0..<5) { _ in
                            MainRowView(title: "Cofee Like", subtitle: "2 км от вас")
            
                        }
                    }
                    .padding(.top, 10)
                }
                
                CustomButton(title: "На карте") {
                    
                }
            }
            .padding(.horizontal)
            .navigationTitle("Ближайшие кафейни")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    BackButton()
                }
            }
        }
    }
}

#Preview {
    MainView()
}
