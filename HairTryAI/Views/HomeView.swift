//
//  HomeView.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 04/10/2025.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(Router.self) var router
 
    var body: some View {
        VStack {
            Text("HomeView")
            
            Button {
                router.navigateToSettings()
            } label: {
                Text("Go to Settings")
            }
        }
        .navigationTitle("Home")
    }
}

#Preview {
    HomeView()
        .router()
}
