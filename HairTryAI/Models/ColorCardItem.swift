//
//  ColorListItemModel.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI

struct ColorCardItem: Identifiable {
    enum Size: String, CaseIterable {
        case small, full
    }

    var id = UUID()
    var size: Size
    var color: Color
    var name: String
}
