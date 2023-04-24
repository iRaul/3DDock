//
//  ContentView.swift
//  Dock
//
//  Created by Raul on 22.04.2023.
//

import SwiftUI
import SwiftUIVisualEffects

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg2")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 340, height: 70)
                    .border(LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white.opacity(0.3)]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(8)
                    .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)).opacity(1), radius: 0, x: 0, y: 1)
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)).opacity(1), radius: 0, x: 0, y: 1)
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)).opacity(1), radius: 0, x: 0, y: 1)
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)).opacity(1), radius: 0, x: 0, y: 1)
                    .overlay {
                        HStack(spacing: 30) {
                            ZStack {
                                // Icon #1
                                Image("mail")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                
                                // Shadow
                                Rectangle()
                                    .fill(.black)
                                    .blur(radius: 40)
                                    .frame(width: 40, height: 10)
                                    .cornerRadius(10)
                                    .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                                    .offset(y: 30)

                            }
                            ZStack {
                                // Icon #2
                                Image("messages")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                
                                // Shadow
                                Rectangle()
                                    .fill(.black)
                                    .blur(radius: 40)
                                    .frame(width: 40, height: 10)
                                    .cornerRadius(10)
                                    .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                                    .offset(y: 30)
                            }
                            ZStack {
                                // Icon #3
                                Image("facetime")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                
                                // Shadow
                                Rectangle()
                                    .fill(.black)
                                    .blur(radius: 40)
                                    .frame(width: 40, height: 10)
                                    .cornerRadius(10)
                                    .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                                    .offset(y: 30)
                            }
                            ZStack {
                                // Icon #4
                                Image("arc")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .scaleEffect(1.4)
                                    
                                // Shadow
                                Rectangle()
                                    .fill(.black)
                                    .blur(radius: 40)
                                    .frame(width: 40, height: 10)
                                    .cornerRadius(10)
                                    .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                                    .offset(y: 30)
                            }
                        }
                        .offset(y: -30)
                    }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
