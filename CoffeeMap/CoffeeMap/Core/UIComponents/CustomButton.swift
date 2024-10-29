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
            .foregroundStyle(.white)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    CustomButton(title: "Регистрация", action: {})
}
