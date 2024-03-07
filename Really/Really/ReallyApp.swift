//
//  ReallyApp.swift
//  Really
//
//  Created by Remachann . on 20/11/1444 AH.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
    
}

@main
struct ReallyApp: App {
    @StateObject var datamanager = YayCourse()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            TabVieww()
                .environmentObject(datamanager)
        }
    }
}
