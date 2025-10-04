//
//  RouterViewModifier.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 04/10/2025.
//

import SwiftUI

struct RouterViewModifier: ViewModifier {
    
    // MARK: - Properties
    @State private var router = Router()
    
    // MARK: - Methods
    private func routeView(for route: Route) -> some View {
        Group {
            switch route {
            case .home:
                HomeView()
            case .preview:
                PreviewView()
            case .colors:
                ColorsView()
            case .styles:
                StylesView()
            case .settings:
                SettingsView()
            }
        }
        .environment(router)
    }
    
    // MARK: - Body
    func body(content: Content) -> some View {
        NavigationStack(path: $router.path) {
            content
                .environment(router)
                .navigationDestination(for: Route.self) { route in
                    routeView(for: route)
                }
        }
    }
}
