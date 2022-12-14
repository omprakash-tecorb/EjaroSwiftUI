//
//  ContentView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            NavigationLink(destination: SelectLanguageView())
            {
                ZStack{
                    
                    Image("ejaro_white_logo_big")
                    //.resizable()
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                    
                        .frame(minWidth: 10, minHeight: 10)
                    // .frame(width: 200, height: 200)
                        .background(Color(hex: 0xb2020f))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex: 0xb2020f))
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
