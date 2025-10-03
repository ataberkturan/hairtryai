//
//  LargeButtonStyle.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI

struct LargeButtonStyle: ButtonStyle {
    
    // MARK: - Body
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.body)
            .fontWeight(.bold)
            .frame(height: 42)
            .padding(.horizontal, 20)
            .foregroundStyle(Color.black)
            .background(Color.white)
            .cornerRadius(999)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

// MARK: - Extensions
extension ButtonStyle where Self == LargeButtonStyle {
    static var large: LargeButtonStyle { LargeButtonStyle() }
}
