//
//  productInfo.swift
//  KWK-estee
//
//  Created by Jenny Trexler on 7/16/23.
//

import SwiftUI

struct productInfo: View {
    @State private var photoWidth: CGFloat = 320
    @State private var photoHeight: CGFloat = ((320/777)*1080)
    
    @State private var animatingHeart = false
    @State private var animatingStar = false
    //for leaf
    @State private var animatingCross = false
    
    @State private var animateGradient = false

    
    var body: some View {
        ZStack {
            Color("lavenderBlush")
                .ignoresSafeArea()
            
            Image("lauderLogoClear")
                .resizable()
                .frame(width: 250, height: 81.97)
                .offset(x: 0, y: -330)
            
            Image("estee_20_clear")
                .resizable()
                .frame(width: photoWidth, height: photoHeight)
            
            VStack {
                ZStack {
//Heart
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.linearGradient(colors: [Color("mimiPink"), Color("salmonPink")], startPoint: .top, endPoint: .bottom))
                        .offset(x: animatingHeart ? 0 : -125, y: animatingHeart ? 100: 0)
                        .scaleEffect(animatingHeart ? 2.5 : 1.0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.9, dampingFraction: 0.7, blendDuration: 0.0)){
                                animatingHeart.toggle()
                            }
                        }
                    
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.linearGradient(colors: [(animatingHeart ? Color("mimiPink") : Color("madder")), Color("madder")], startPoint: animateGradient ? .top : .bottomLeading, endPoint: animateGradient ? .bottom : .topTrailing))
                        .opacity(animatingHeart ? 0.0 : 1.0)
                        .offset(x: animatingHeart ? 0 : -125, y: animatingHeart ? 100 : 0)
                        .scaleEffect(animatingHeart ? 2.5 : 1.0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.9, dampingFraction: 0.7, blendDuration: 0.0)){
                                animatingHeart.toggle()
                                if animatingStar == true {
                                    animatingStar.toggle()
                                }
                                if animatingCross == true {
                                    animatingCross.toggle()
                                }
                            }
                        }
                    
//                    Circle()
//                        .frame(width: 80, height: 80)
//                        .offset(x: 0, y: 100)
//                        .scaleEffect(2.5)

                    
//                    Text("          drying alcohol,\n   fragrance, mineral oil,\n sulfates, sulfite, silicone,\n         synthetic colors,\n          animal-derived\n              ingredients")
//                        .offset(x: 0, y: 260)
//                        .font(.headline)
                    
                    Text("made without" .uppercased())
                        .offset(x: 0, y: 187)
                        .font(.headline)
                        .fontWeight(.bold)
                        .opacity(animatingHeart ? 1.0 : 0)
                        .foregroundColor(animatingHeart ? Color("amaranth") : Color("mimiPink"))
//                        .animation(.easeIn(duration: 0.1).delay(0.5), value: animatingHeart)
                    Text("          drying alcohol,\n   fragrance, mineral oil,\n sulfates, sulfite, silicone,\n         synthetic colors,\n          animal-derived\n              ingredients")
                        .offset(x: 0, y: 265)
                        .font(.headline)
                        .opacity(animatingHeart ? 1.0 : 0)
                        .foregroundColor(animatingHeart ? Color("amaranth") : Color("mimiPink"))
                    
                    
//Star
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.linearGradient(colors: [Color("mimiPink"), Color("salmonPink")], startPoint: .top, endPoint: .bottom))
                        .offset(x: animatingStar ? 0 : 100, y: 100)
                        .scaleEffect(animatingStar ? 2.5 : 1.0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.9, dampingFraction: 0.7, blendDuration: 0.0)){
                                animatingStar.toggle()
                            }
                        }
                    
                    Image(systemName: "star.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.linearGradient(colors: [(animatingStar ? Color("mimiPink") : Color("amaranth")), Color("amaranth")], startPoint: animateGradient ? .top : .bottomLeading, endPoint: animateGradient ? .bottom : .topTrailing))
                        .opacity(animatingStar ? 0.0 : 1.0)
                        .offset(x: animatingStar ? 0 : 100, y: animatingStar ? 100 : 100)
                        .scaleEffect(animatingStar ? 2.5 : 1.0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.9, dampingFraction: 0.7, blendDuration: 0.0)){
                                animatingStar.toggle()
                                if animatingHeart == true {
                                    animatingHeart.toggle()
                                }
                                if animatingCross == true {
                                    animatingCross.toggle()
                                }
                            }
                        }
                    
//                    Circle()
//                        .frame(width: 80, height: 80)
//                        .offset(x: 0, y: 100)
//                        .scaleEffect(2.5)
                    
                    
                    Text("+ removes excess oil\n + strengthens skin\n              barrier\n     + minimizes the\n         size of pores")
                        .offset(x: 0, y: 257)
                        .font(.headline)
                        .opacity(animatingStar ? 1.0 : 0)
                        .foregroundColor(animatingStar ? Color("amaranth") : Color("mimiPink"))
                    
//Leaf
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.linearGradient(colors: [Color("mimiPink"), Color("salmonPink")], startPoint: .top, endPoint: .bottom))
                        .offset(x: animatingCross ? 0 : 30, y: animatingCross ? 100 : -100)
                        .scaleEffect(animatingCross ? 2.5 : 1.0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.9, dampingFraction: 0.7, blendDuration: 0.0)){
                                animatingCross.toggle()
                            }
                        }
                    
                    Image(systemName: "leaf.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.linearGradient(colors: [(animatingCross ? Color("mimiPink") : Color("amaranthPurple")), Color("amaranthPurple")], startPoint: animateGradient ? .top : .bottomLeading, endPoint: animateGradient ? .bottom : .topTrailing))
                        .opacity(animatingCross ? 0.0 : 1.0)
                        .offset(x: animatingCross ? 0 : 30, y: animatingCross ? 100 : -100)
                        .scaleEffect(animatingCross ? 2.5 : 1.0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.9, dampingFraction: 0.7, blendDuration: 0.0)){
                                animatingCross.toggle()
                                if animatingHeart == true {
                                    animatingHeart.toggle()
                                }
                                if animatingStar == true {
                                    animatingStar.toggle()
                                }
                            }
                        }
                    
                } //ZStack
                
            } //VStack
        } //ZStack
    }
}

struct productInfo_Previews: PreviewProvider {
    static var previews: some View {
        productInfo()
    }
}
