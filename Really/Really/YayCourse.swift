//
//  YayCourse.swift
//  Really
//
//  Created by Remachann . on 22/11/1444 AH.
//

import SwiftUI
import Firebase

class YayCourse: ObservableObject {
    @Published var course: [Course] = []
    
    
    init() {
        fetchCourses()
    }
    
    
    func fetchCourses() {
        course.removeAll()
        
        let db = Firestore.firestore()
        let ref = db.collection("CoursesList")
        ref.getDocuments{ snapshot, error in
            guard error == nil
            else {
                print(error!.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let Title = data["Title"] as? String ?? ""
                    let Descreption = data["Descreption"] as? String ?? ""
                    let hours = data["hours"] as? String ?? ""
                    
                    
                    let course = Course(id: id, Title: Title, Descreption: Descreption, hours: hours)
                    self.course.append(course)
                    
                }
            }
        }
    }
    func addCourse(courseTiming: String) {
        let db = Firestore.firestore()
        let ref = db.collection("CoursesList").document(courseTiming)
        ref.setData(["Course" : courseTiming ,"id": 3]) {error in
            if let error = error {
                print(error.localizedDescription)
            }
            
        }
    }
}
