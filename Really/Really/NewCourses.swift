//
//  NewCourses.swift
//  Really
//
//  Created by Remachann . on 22/11/1444 AH.
//

import SwiftUI

struct NewCourses: View {
    @EnvironmentObject var dataManager: YayCourse
    @State private var newCourse = ""
    @State private var newDescreption = ""
    @State private var newHours = ""
    var body: some View {
        VStack {
          
                
            TextField("Course Name" , text: $newCourse)
            TextField("Course Descreption" , text: $newDescreption)
            TextField("Hours" , text: $newHours)
                
            Button {
                dataManager.addCourse(courseTiming: "")
            }
        label: {
            Text("save")
            
        }
            
        }
        .background(Image("Blob 1"))
        
    }
}

struct NewCourses_Previews: PreviewProvider {
    static var previews: some View {
        NewCourses()
    }
}
