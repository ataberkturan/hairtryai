//
//  MediumButtonStyle.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI

struct MediumButtonStyle: ButtonStyle {
    
    // MARK: - Body
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.caption)
            .fontWeight(.semibold)
            .frame(height: 32)
            .padding(.horizontal, 10)
            .foregroundStyle(Color.black)
            .background(Color.white)
            .cornerRadius(999)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

// MARK: - Extensions
extension ButtonStyle where Self == MediumButtonStyle {
    static var medium: MediumButtonStyle { MediumButtonStyle() }
}
