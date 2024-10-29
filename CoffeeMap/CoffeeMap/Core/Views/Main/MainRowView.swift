//
//  MainRowView.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct MainRowView: View {
    let title: String
    let subtitle: String
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.headline)
                
                Text(subtitle)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.orange.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        
    }
}

#Preview {
    MainRowView(title: "Coffee Like", subtitle: "3 км от вас")
}
