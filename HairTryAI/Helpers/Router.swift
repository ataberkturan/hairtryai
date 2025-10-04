//
//  Router.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 04/10/2025.
//

import Foundation
import SwiftUI
import Observation

@Observable
class Router {
    var path = NavigationPath()
    
    func navigateToPreview() {
        path.append(Route.preview)
    }
    
    func navigateToHome() {
        path.append(Route.home)
    }
    
    func navigateToSettings() {
        path.append(Route.settings)
    }
    
    func NavigateToColors() {
        path.append(Route.colors)
    }
    
    func NavigateToStyles() {
        path.append(Route.styles)
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}

enum Route: Hashable {
    case home
    case preview
    case colors
    case styles
    case settings
}
