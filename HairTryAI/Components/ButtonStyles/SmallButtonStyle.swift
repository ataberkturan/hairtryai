//
//  SystemButton.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI

struct SmallButtonStyle: ButtonStyle {
    
    // MARK: - Body
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.caption2)
            .fontWeight(.semibold)
            .frame(height: 22)
            .padding(.horizontal, 12)
            .foregroundStyle(Color.black)
            .background(Color.white)
            .cornerRadius(999)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

// MARK: - Extensions
extension ButtonStyle where Self == SmallButtonStyle {
    static var small: SmallButtonStyle { SmallButtonStyle() }
}
