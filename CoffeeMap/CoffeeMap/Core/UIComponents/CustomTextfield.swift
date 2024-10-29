//
//  CustomTextfield.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct CustomTextfield: View {
    // MARK: - Properties
    @Binding var text: String
    let placeholder: String
    let image: String
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .leading) {
            
            HStack{
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.gray)
                    .padding(.leading, 10)
                
                TextField(placeholder, text: $text)
                
            }
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 1))
            
        }
    }
}

#Preview {
    CustomTextfield(text: .constant(""), placeholder: "Placeholder", image: "")
}
