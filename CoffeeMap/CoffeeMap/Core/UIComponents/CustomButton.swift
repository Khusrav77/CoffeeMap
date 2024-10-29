//
//  CustomButton.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct CustomButton: View {
    // MARK: - Properties
    let title: String
    var action: () -> Void
    
    // MARK: - Body
    var body: some View {
        Button {
           action()
        } label: {
            Text(title)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 1))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    CustomButton(title: "Регистрация", action: {})
}
