//
//  launchScreenAnimation.swift
//  KWK-estee
//
//  Created by Jenny Trexler on 7/16/23.
//

import SwiftUI

struct launchScreenAnimation: View {
    @State private var loadingText: [String] = "Loading your beautiful...".map { String($0) }
    @State private var showLoadingText = false
    
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State private var counter: Int = 0
    
    @State private var loops: Int = 0
    @Binding var showLaunchView: Bool
    
    var body: some View {
        ZStack {
            //add background color of launch
            Color.white.ignoresSafeArea()
            
            Image("lauderLogoClear")
                .resizable()
                .frame(width: 250, height: 81.967)
            
            ZStack {
                if showLoadingText {
                    
                    HStack(spacing: 0) {
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[index])
                              .font(.body)
                              .fontDesign(.rounded)
                            // change color to necessary
                              .foregroundColor(Color("brightPink"))
                              .fontWeight(.medium)
                              .offset(y: counter == index ? -5 : 0)
                        }
                    } .transition(AnyTransition.opacity.animation(.easeIn))
                }
                
            } .offset(y: 40)
        } .onAppear {
            showLoadingText.toggle()
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.spring()) {
                let lastIndex = loadingText.count - 1
                if counter == lastIndex {
                    counter = 0
                    loops += 2
                    if loops >= 1 {
                        showLaunchView = false
                    }
                } else {
                    counter += 1
                }
            }
        })
    }
}

struct launchScreenAnimation_Previews: PreviewProvider {
    static var previews: some View {
        launchScreenAnimation(showLaunchView: .constant(true))
    }
}
