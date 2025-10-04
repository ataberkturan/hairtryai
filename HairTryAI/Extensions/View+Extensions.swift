//
//  View+Extensions.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 04/10/2025.
//

import Foundation
import SwiftUI

// MARK: - Extensions
extension View {
    public func router() -> some View {
        modifier(RouterViewModifier())
    }
}
