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
    @State private var animateButton = false
    
    @State private var panelColors = [Color("amaranth"), Color("mimiPink"), Color("madder"), Color("brightPink"), Color("salmonPink"), Color("amaranthPurple")]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("otherPink"), Color("lavenderBlush")], startPoint: animateGradient ? .topLeading : .bottomLeading, endPoint: animateGradient ? .bottomTrailing : .topTrailing)
                .ignoresSafeArea()
                .onAppear {
                    withAnimation(.linear(duration: 4.0).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
            
            Image("lauderLogoClear")
                .resizable()
                .frame(width: 250, height: 81.97)
                .position(x: 195, y: 30)
            
            HStack {
                ZStack {
                    Image("singleBubble")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .position(x: 195, y: 350)
                        .opacity(0.7)
                    Image("foamCleanser")
                        .resizable()
                        .frame(width: 90, height: 260)
                        .rotationEffect(.degrees(-15))
                        .offset(x: -30, y: -30)
                    Image("cream")
                        .resizable()
                        .frame(width: 105, height: 100)
                        .rotationEffect(.degrees(7))
                        .offset(x: 35, y: -20)
                    //EWG Logo
                    Circle()
                        .foregroundColor(Color("amaranth"))
                        .frame(width: 106, height: 100)
                        .position(x: 280, y: 460)
                    Image("EWG_pink")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .position(x: 280, y: 460)
                }
            } //HStack
            
            Circle()
                .frame(width: 600, height: 600)
                .position(x: 195, y: 900)
                .foregroundColor(Color("mimiPink"))
            
            VStack {
//                Text("introducing")
//                    .font(.title3)
//                    .foregroundColor(.white)
//                    .position(x: 195, y: 70)
//                    .fontDesign(.rounded)
//                Text("NUTRIOUS")
//                    .font(.largeTitle)
//                    .rotation3DEffect(.degrees(10), axis: (1, 0, 0))
//                    .foregroundColor(.white)
//                    .fontWeight(.bold)
//                    .fontDesign(.rounded)
//                    .position(x: 195, y: -200)
                Image("nutritious")
                    .resizable()
                    .frame(width: 260, height: 37)
                    .offset(y: -260)
            }
            
            Image("skinLoving")
                .resizable()
                .frame(width: 260, height: 60)
                .position(x: 195, y: 150)
            
            Text("Ready to learn more?")
                .font(.title3)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color("brightPink"))
                .position(x: 195, y: 660)
            
            
            
        } //ZStack
    }
}
