//
//  learnMore.swift
//  KWK-estee
//
//  Created by Jenny Trexler on 7/17/23.
//

import SwiftUI

struct learnMore: View {
    @State private var kelp = false
    @State private var coconut = false
    @State private var algae = false
    
    @State var selectedTab: Int = 0
    
    
    var body: some View {
        ZStack {
            //background
            Image("abstractBubbles")
                .resizable()
                .frame(width: 1400, height: 1000)
                .rotationEffect(.degrees(180))
                .offset(x: 60)
                .opacity(0.4)
            
            LinearGradient(colors: [Color("mimiPink").opacity(0.7), Color("salmonPink").opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            Circle()
                .frame(width: 300)
                .foregroundColor(Color("mimiPink").opacity(0.1))
                .blur(radius: 10)
                .offset(x: -100, y: -150)
            
            //3 circles
            VStack {
                Text("MADE WITH")
                    .padding(.bottom, 1)
                    .foregroundColor(Color("amaranth"))
                HStack {
                    VStack {
                        Text("SWEET KELP")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .opacity(kelp ? 1.0 : 0)
                            .foregroundColor(.white)
                            .shadow(color: Color("amaranth"), radius: 5)
                        ZStack {
                            Circle()
                                .foregroundColor(Color("amaranth"))
                                .frame(width: 80)
                            Image("sweetKelp")
                                .resizable()
                                .frame(width: 70, height: 72)
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 1.5)) {
                                        kelp.toggle() }
                                }
                        }
                    }
                    VStack {
                        Text("COCONUT WATER")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .opacity(coconut ? 1.0 : 0)
                            .shadow(color: Color("amaranth"), radius: 5)
                        ZStack {
                            Circle()
                                .foregroundColor(Color("amaranth"))
                                .frame(width: 80)
                            Image("coconut")
                                .resizable()
                                .frame(width: 70, height: 55)
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 1.5)) {
                                        coconut.toggle() }
                                }
                        }
                    }
                    VStack {
                        Text("RED ALGAE")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .opacity(algae ? 1.0 : 0)
                            .shadow(color: Color("amaranth"), radius: 5)
                        ZStack {
                            Circle()
                                .foregroundColor(Color("amaranth"))
                                .frame(width: 80)
                            Image("seaweed")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 1.5)) {
                                        algae.toggle() }
                                }
                        }
                    }
                }
            }
            .padding(20)
            .frame(width: 360)
            .foregroundColor(.white)
            
            VStack {
                Rectangle()
                    .frame(width: 400, height: 50)
                    .foregroundStyle(LinearGradient(colors: [Color("amaranth"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                Rectangle()
                    .frame(width: 400, height: 50)
                    .foregroundStyle(LinearGradient(colors: [Color("amaranth"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                Rectangle()
                    .frame(width: 400, height: 50)
                    .foregroundStyle(LinearGradient(colors: [Color("amaranth"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                Rectangle()
                    .frame(width: 400, height: 50)
                    .foregroundStyle(LinearGradient(colors: [Color("amaranth"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                Rectangle()
                    .frame(width: 400, height: 50)
                    .foregroundStyle(LinearGradient(colors: [Color("amaranth"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                    .offset(y: 200)
            }
            
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    ZStack {
                        HStack {
                            NavigationLink(destination: ContentView()) {
                                Image(systemName: "calendar")
                                    .foregroundColor(Color("DarkPurple"))
                            }.padding(.all).navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            NavigationLink(destination: productInfo()) {
                                Image(systemName: "sparkles")
                                    .foregroundColor(Color("DarkPurple"))
                            }.padding(.all)
                                .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            NavigationLink(destination: ContentView()) {
                                Image(systemName: "wrench.and.screwdriver")
                                    .foregroundColor(Color("DarkPurple"))
                            }.padding(.all)
                                .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        }
                    }//ZStack
                }
            }//toolbar
            
        } //ZStack
    }
}

struct learnMore_Previews: PreviewProvider {
    static var previews: some View {
        learnMore()
    }
}
