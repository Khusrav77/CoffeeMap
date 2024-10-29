//
//  LoginView.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct LoginView: View {
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
            
            CustomButton(title: "Войти", action: {})
        }
        .padding()
        .navigationTitle("Вход")
    }
}

#Preview {
    LoginView()
}
