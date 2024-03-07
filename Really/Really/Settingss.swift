//
//  Settingss.swift
//  Really
//
//  Created by Remachann . on 21/11/1444 AH.
//

import SwiftUI

struct Settingss: View {
    
    var body: some View {
        NavigationView {
            List {
                profile
                menue
                
                    .listSectionSeparatorTint(.blue)
                    .listRowSeparator(.hidden)
                
                
                
                
                
                
            }
            .listStyle(.plain)
            .navigationTitle("Profile")
        }
    }
}
var profile: some View{
    VStack(spacing:8) {
        Image(systemName: "person.crop.circle.fill.badge.checkmark")
            .symbolVariant(.circle)
            .font(.system(size: 32))
            .symbolRenderingMode(.palette)
            .foregroundStyle(.blue, .blue.opacity(0.3))
            .padding()
            .background(Circle().fill(.ultraThinMaterial))
            .background(Image("Blob 1").offset(x: 200, y: 10)
                .symbolVariant(.fill)
                .foregroundColor(.blue)
                .font(.system(size: 200))
                .offset(x: -50 , y: -100)
            )
        Text("Reema")
            .font(.title.weight(.semibold))
        HStack {
            Image(systemName: "location")
                .imageScale(.small)
            Text("Saudi Arabia")
                .foregroundColor(.secondary)
        }
        
    }
    .frame(maxWidth: .infinity)
    .padding()
}
var menue: some View{
    Section {
        NavigationLink(destination: ContentView()) {
            Label("Settings",systemImage: "gear")
        }
        NavigationLink{ContentView()} label: {
            Label("Billing",systemImage: "creditcard")
        }
        NavigationLink{ContentView()} label: {
            Label("Help", systemImage: "questionmark")
        }
        
        
    }
}

struct Settingss_Previews: PreviewProvider {
    static var previews: some View {
        Settingss()
    }
}
