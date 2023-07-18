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
    
    @State private var minerals = false
    @State private var vitamins = false
    @State private var fats = false
    @State private var phyto = false
    @State private var poly = false
    @State private var iso = false
    
    let icons: [String] = ["estee 1", "estee 3", "estee 8"]
    
    
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
            //end background
            
            //3 circles
            VStack {
                Rectangle()
                    .opacity(0)
                    .frame(height: 80)
                
                TabView {
                    ForEach(icons, id: \.self) { icon in
                        Image(icon)
                            .resizable()
                            .scaledToFit()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 260)
                
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
                } //HStack
                
                Spacer()
            }
            .padding(20)
            .frame(width: 360)
            .foregroundColor(.white)
            //end 3 circles
            
            //nutrient info
            VStack {
                Rectangle()
                    .opacity(0)
                    .frame(height: 400)
                
                Text(minerals ? "reduces damage from sun exposure\nand maintains skin moisture" : "MINERALS")
                    .frame(width: 400, height: 50)
                    .background(LinearGradient(colors: [Color("amaranth"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                    .multilineTextAlignment(.center)
                    .fontDesign(.rounded)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            minerals.toggle()
                        }
                    }
                Text(vitamins ? "protects cells from damage\nand assists in cell growth" : "VITAMINS")
                    .frame(width: 400, height: 50)
                    .background(LinearGradient(colors: [Color("salmonPink"),  Color("mimiPink")], startPoint: .trailing, endPoint: .leading))
                    .offset(y: -10)
                    .multilineTextAlignment(.center)
                    .fontDesign(.rounded)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            vitamins.toggle()
                        }
                    }
                Text(fats ? "keeps skin hydrated, plump, and young" : "ESSENTIAL FATS")
                    .frame(width: 400, height: 50)
                    .background(LinearGradient(colors: [Color("brightPink"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                    .offset(y: -20)
                    .multilineTextAlignment(.center)
                    .fontDesign(.rounded)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            fats.toggle()
                        }
                    }
                Text(phyto ? "helps retain firmness and improves blood flow" : "PHYTONUTRIENTS")
                    .frame(width: 400, height: 50)
                    .background(LinearGradient(colors: [Color("otherPink"),  Color("mimiPink")], startPoint: .trailing, endPoint: .leading))
                    .offset(y: -30)
                    .multilineTextAlignment(.center)
                    .fontDesign(.rounded)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            phyto.toggle()
                        }
                    }
                Text(poly ? "protects against oxidative damage and slows aging" : "POLYPHENOLS")
                    .frame(width: 400, height: 50)
                    .background(LinearGradient(colors: [Color("salmonPink"),  Color("mimiPink")], startPoint: .leading, endPoint: .trailing))
                    .offset(y: -40)
                    .multilineTextAlignment(.center)
                    .fontDesign(.rounded)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            poly.toggle()
                        }
                    }
                Text(iso ? "keeps skin hydrated, plump, and young" : "ISOFLAVONES")
                    .frame(width: 400, height: 50)
                    .background(LinearGradient(colors: [Color("brightPink"),  Color("mimiPink")], startPoint: .trailing, endPoint: .leading))
                    .offset(y: -50)
                    .multilineTextAlignment(.center)
                    .fontDesign(.rounded)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            iso.toggle()
                        }
                    }
            }.foregroundColor(.white)
            //end nutrientInfo
            
        } //ZStack
    } //View
}

struct learnMore_Previews: PreviewProvider {
    static var previews: some View {
        learnMore()
    }
}
