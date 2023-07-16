//
//  ContentView.swift
//  KWK-estee
//
//  Created by Jenny Trexler on 7/16/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        ZStack{
            //BottomNav
            TabView(selection: $selectedTab) {
                MainView(selectedTab: $selectedTab)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                productInfo()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Learn More")
                    }
                    .tag(1)
                Text("profile tab".uppercased())
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Buy")
                    }
                    .tag(2)
            }//BottomNav
            .accentColor(Color("amaranth"))
            
        } //ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MainTab for navbar
struct MainView: View {
    
    @Binding var selectedTab: Int
    @State private var animateGradient = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("otherPink"), Color("lavenderBlush")], startPoint: animateGradient ? .topLeading : .bottomLeading, endPoint: animateGradient ? .bottomTrailing : .topTrailing)
                .ignoresSafeArea()
                .onAppear {
                    withAnimation(.linear(duration: 4.0).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
            
            VStack {
                //Logo
                Image("lauderLogoClear")
                    .resizable()
                    .frame(width: 250, height: 81.97)
                    .offset(x: 0, y: -300)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(Color("salmonPink"))
                })
            } //VStack
        } //ZStack
    }
}
