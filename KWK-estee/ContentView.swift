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
            
//            HStack {
//                Rectangle()
//                    .frame(width: UIScreen.main.bounds.width * 0.25, height: 40)
//                    .padding(.trailing, 0)
//                Rectangle()
//                    .frame(width: UIScreen.main.bounds.width * 0.25, height: 40)
//                    .padding(.leading, 0)
//                    .padding(.trailing, 0)
//                Rectangle()
//                    .frame(width: UIScreen.main.bounds.width * 0.25, height: 40)
//                Rectangle()
//                    .frame(width: UIScreen.main.bounds.width * 0.25, height: 40)
//                    .padding(.leading, 0)
//            }
            
            //Row1
            Image("estee 53")
                .resizable()
                .frame(width: 200, height: 200)
                .position(x: 100, y: 300)
            Image("estee 14")
                .resizable()
                .frame(width: 200, height: 200)
                .position(x: 300, y: 300)
            //Row2
            Image("estee 9")
                .resizable()
                .frame(width: 200, height: 200)
                .position(x: 100, y: 500)
            Image("estee 46")
                .resizable()
                .frame(width: 200, height: 200)
                .position(x: 300, y: 500)
            Circle()
                .foregroundColor(Color("amaranth"))
                .frame(width: 106, height: 100)
                .position(x: 260, y: 540)
            Image("EWG_pink")
                .resizable()
                .frame(width: 100, height: 100)
                .position(x: 260, y: 540)
            
            VStack {
                //Logo
                Image("lauderLogoClear")
                    .resizable()
                    .frame(width: 250, height: 81.97)
                    .offset(x: 0, y: -300)
                
                
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Learn More")
                        .font(.subheadline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .frame(width: 150, height: 50)
                        .foregroundColor(Color("salmonPink"))
                        .scaleEffect(animateButton ? 1.2 : 1.0)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 3).repeatCount(5)){
                                animateButton.toggle()
                            }
                        }
                }).cornerRadius(20)
            } //VStack
        } //ZStack
    }
}
