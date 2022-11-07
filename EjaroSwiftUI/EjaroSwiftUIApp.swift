//
//  EjaroSwiftUIApp.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
       // GADMobileAds.sharedInstance().start(completionHandler: nil) // << here !!
        UIScrollView.appearance().bounces = false
        return true
    }
}

@main
struct EjaroSwiftUIApp: App {
    var network = Network()
   // var network2 = Getdata()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
               // .environmentObject(network2)
        }
    }
}
