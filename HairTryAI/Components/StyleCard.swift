//
//  StyleCard.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI

struct StyleCard: View {
    
    // MARK: - Properties
    let item: StyleCardItem
    let action: () -> Void
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(item.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                Button {
                    action()
                } label: {
                    Text("Try")
                }
                .buttonStyle(.small)
            }
            .padding(16)
        }
        .frame(height: 220)
        .frame(maxWidth: .infinity, alignment: .center)
        .background {
            LinearGradient(colors: [.clear, .clear, .black.opacity(0.8)], startPoint: .top, endPoint: .bottom)
        }
        .background {
            item.image
                .resizable()
                .scaledToFill()
        }
        .cornerRadius(24)
    }
}

// MARK: - Preview
#Preview {
    HStack {
        StyleCard(
            item: .init(title: "Curly", image: Image(.placeholder)),
            action: {}
        )
        StyleCard(
            item: .init(title: "Wavy", image: Image(.placeholder)),
            action: {}
        )
    }
}
