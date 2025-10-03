//
//  XLargeButtonStyle.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI

struct XLargeButtonStyle: ButtonStyle {
    
    // MARK: - Properties
    let isDark: Bool
    
    // Private
    private let systemGray5Dark = Color(UIColor.systemGray5.resolvedColor(
        with: UITraitCollection(userInterfaceStyle: .dark)
    ))
    
    // MARK: - Body
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.body)
            .fontWeight(.bold)
            .frame(height: 48)
            .padding(.horizontal, 20)
            .foregroundStyle(isDark ? .white : .black)
            .background( isDark ? systemGray5Dark : .white)
            .cornerRadius(999)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

// MARK: - Extensions
extension ButtonStyle where Self == XLargeButtonStyle {
    static func xlarge(isDark: Bool = false) -> XLargeButtonStyle {
        return XLargeButtonStyle(isDark: isDark)
    }
}

