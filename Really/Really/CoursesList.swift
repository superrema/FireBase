//
//  CoursesList.swift
//  Really
//
//  Created by Remachann . on 22/11/1444 AH.
//

import SwiftUI
import Firebase

struct CoursesList: View {
    @State var isDeleted = false
    @State var isPinned = false
    @EnvironmentObject var someCourse: YayCourse
    @State private var showpopup = false
    // private var addButton: some View{
    
    var body: some View {
        NavigationView{
           
                Color.clear.opacity(0.1)
                
                
                List(someCourse.course, id: \.id){ uu in
                    Text(uu.Descreption)
                    //                Text(uu.Hours)
                    //                Text(uu.Title)
                    
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button(action:{isDeleted = true}) {
                                
                                Label("" , systemImage: "trash")
                            }
                            .tint(.red)
                            Button{ isPinned.toggle() } label: {
                                if isPinned{
                                    Label("unpin", image: "pin.slash")
                                } else{
                                    Label("Pin", systemImage: "pin")
                                }
                            }
                            //.tint(.y)
                    }
                }
                
                
                .navigationBarTitle("My Courses")
                
                .navigationBarItems(trailing: Button(action: {
                    showpopup.toggle()
                }, label: {
                    Image(systemName: "plus")
                }
                                                    ))
                .sheet(isPresented: $showpopup) {
                    NewCourses()
                }
                
            }
            .background(Image("Blob 1"))
            .onAppear(){
                someCourse.fetchCourses()
            }
            
        }
    }



struct CoursesList_Previews: PreviewProvider {
    static var previews: some View {
        CoursesList()
            .environmentObject(YayCourse())
    }
}
