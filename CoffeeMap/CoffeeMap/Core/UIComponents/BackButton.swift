//
//  BackButton.swift
//  CoffeeMap
//
//  Created by Khusrav Safiev on 10/29/24.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    BackButton()
}
