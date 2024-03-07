//
//  ContentView.swift
//  Really
//
//  Created by Remachann . on 20/11/1444 AH.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .leading, spacing: 8.0) {
                Spacer()
                Image(systemName: "heart")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26.0, height: 26.0)
                    .cornerRadius(10.0)
                    .padding(9)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20 , style: .continuous))
                VStack {
                    VStack {
                        Text("Design Your App")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.linearGradient(colors: [.primary, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                        
                        
                        
                        VStack {
                            Text("20 Sections-3 hours".uppercased())
                                .foregroundColor(.secondary)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .offset(x:-50)
                            Text("Build an iOS app for iOS 15 with custom layouts, animations and...")
                                .foregroundColor(.secondary)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .padding(.all)
                                .cornerRadius(20.0)
                                
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding(.all, 20.0)
            .padding(.vertical, 20)
            .frame(height: 350.0)
            .background(.ultraThinMaterial)
            .cornerRadius(30.0)
            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0 , y: 10)
          //  .modifier(StrokeStyle())

            .padding(.horizontal,20)
            .background(Image("Blob 1").offset(x:250, y: -100))
            .background(Image("Blob 1").offset(x:-200, y: 500))
            .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32 , y: -110)
            
        )
            VStack(alignment: .leading, spacing: 8.0) {
                Spacer()
                Image(systemName: "heart")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26.0, height: 26.0)
                    .cornerRadius(10.0)
                    .padding(9)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20 , style: .continuous))
                VStack {
                    VStack {
                        Text("Web App Design")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.linearGradient(colors: [.primary, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                        
                        
                        
                        VStack {
                            Text("15 Sections-3 hours".uppercased())
                                .foregroundColor(.secondary)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .offset(x:-50)
                            Text("Get UI inspiration from Midjourney and learn UI design")
                                .foregroundColor(.secondary)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .padding(.all)
                                .cornerRadius(20.0)
                                
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding(.all, 20.0)
            .padding(.vertical, 20)
            .frame(height: 350.0)
            .background(.ultraThinMaterial)
            .cornerRadius(30.0)
            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0 , y: 10)
          //  .modifier(StrokeStyle())

            .padding(.horizontal,20)
            .background(Image("").offset(x:250, y: -100))
            .overlay(
            Image("Illustration 3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32 , y: -100)
            
        )
            VStack(alignment: .leading, spacing: 8.0) {
                Spacer()
                Image("")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26.0, height: 26.0)
                    .cornerRadius(20.0)
                    .padding(9)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20 , style: .continuous))
                VStack {
                    VStack {
                        Text("Learn Animation")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.linearGradient(colors: [.primary, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                        
                        
                        
                        VStack {
                            Text("19 Sections-4 hours".uppercased())
                                .foregroundColor(.secondary)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .offset(x:-50)
                            Text("Level up your UI and animation skills by implementing various applications")
                                .foregroundColor(.secondary)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .padding(.all)
                                .cornerRadius(20.0)
                                
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding(.all, 20.0)
            .padding(.vertical, 20)
            .frame(height: 350.0)
            .background(.ultraThinMaterial)
            .cornerRadius(30.0)
            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0 , y: 10)
          //  .modifier(StrokeStyle())

            .padding(.horizontal,20)
            .background(Image("").offset(x:250, y: -100))
            .overlay(
            Image("Illustration 9")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 210)
                .offset(x: 32 , y: -100)
            
        )
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
