//
//  EjaroSwiftUIApp.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI

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
