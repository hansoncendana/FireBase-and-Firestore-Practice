//
//  SwiftUIFirebaseAuthApp.swift
//  SwiftUIFirebaseAuth
//
//  Created by Hanson on 2022/6/26.
//

import SwiftUI
import Firebase

@main
struct SwiftUIFirebaseAuthApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

