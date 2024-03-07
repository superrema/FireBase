//
//  TabView.swift
//  Really
//
//  Created by Remachann . on 21/11/1444 AH.
//

import SwiftUI

struct TabVieww: View {
    var body: some View {
        NavigationStack {
            TabView{
                ContentView()
                    .tabItem{
                        Image(systemName: "house")
                            .symbolVariant(.fill)
                        Text("Learn Now")
                    }
                CoursesList()
                   .tabItem{
                        Image(systemName: "list.star")
                        Text("My Courses")
                   }
                Settingss()
                    .tabItem{
                        Image(systemName: "person")
                        Text("Profile")
                    }
                
            }
        }
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabVieww()
    }
}
