//
//  AuthView.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct AuthView: View {
    // MARK: - Properties
    @State private var email: String = ""
    @State private var password: String = ""
    
    // MARK: - Body
    var body: some View {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("E-mail")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                CustomTextfield(text: $email, placeholder: "Enter Your e-mail", image: "envelope")
                    .padding(.bottom, 16)
                
                Text("Пороль")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                CustomSecureField(text: $password, placeholder: "Password", image: "lock")
                    .padding(.bottom, 16)
                
                Text("Повторите пороль")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                CustomSecureField(text: $password, placeholder: "Password", image: "lock")
                    .padding(.bottom, 16)
                
               
                CustomButton(title: "Регистрация") {
                    
                }
                    
            }
            .padding()
            .navigationBarTitle("Регистрация")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AuthView()
}
