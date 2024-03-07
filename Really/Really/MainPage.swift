//
//  MainPage.swift
//  Really
//
//  Created by Remachann . on 21/11/1444 AH.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        
        NavigationView {
            
            
            ZStack{
                Color.clear.background(.regularMaterial)
                VStack(alignment: .center, spacing: 16){
                    Text("Welcome!")
                        .font(.largeTitle).bold()
                    Text("Access 120+ hours of courses, tutorials and livestream")
                        .font(.headline)
                    NavigationLink{CreateAccount()} label: {
                        Label("Sign Up",systemImage: "")
                    }
                    .buttonStyle(.bordered)
                    .tint(.accentColor)
                    .controlSize(.large)
                }
                
                    .padding(20)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y:30)
                    .padding(20)
                    .background(
                        Image("Blob 1").offset(x:200, y: -200)
                    )
                    .background(Image("Blob 1").offset(x: -200, y: 200))
                }
            VStack{
                Text("Welcome To Illustartor")
                    .padding(.bottom,400)
            }
            }
        }
    }

    
    

    


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
