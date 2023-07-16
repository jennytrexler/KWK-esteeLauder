//
//  KWK_esteeApp.swift
//  KWK-estee
//
//  Created by Jenny Trexler on 7/16/23.
//

import SwiftUI

@main
struct KWK_esteeApp: App {
    @State private var showLaunchView: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
                
                
                ZStack {
                    if showLaunchView {
                        launchScreenAnimation(showLaunchView: $showLaunchView)
                            .transition(.opacity)
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
