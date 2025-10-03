//
//  ColorListItem.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI

struct ColorCard: View {
    
    // MARK: - Properties
    let item: ColorCardItem
    
    // MARK: - Body
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Circle()
                    .foregroundStyle(item.color)
                    .frame(width: item.size == .small ? 82 : proxy.size.width)
                Text(item.name)
                    .font(item.size == .small ? .caption : .subheadline)
                    .fontWeight(.bold)
            }
        }
    }
}

// MARK: - Preview
#Preview {
    VStack {
        ColorCard(item: .init(size: .small, color: .cyan, name: "Cyan"))
    }
}
