//
//  SideMenu.swift
//  EjaroSwiftUI
//
//  Created by Apple on 04/11/22.
//

import SwiftUI

struct SideMenu: View {
    @State var menuOpen: Bool = false
    var body: some View {
        ZStack {
            Color.red
            .edgesIgnoringSafeArea(.all)
            
                if !self.menuOpen {
                    Button(action: {
                        self.openMenu() 
                    }, label: {
                        Text("Open")
                            .foregroundColor(.white)
                    })
                }
                
                Side(width: 280,
                         isOpen: self.menuOpen,
                         menuClose: self.openMenu)
   
            
        }
       
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MenuContent: View {
    var body: some View {
        List {
            Text("My ").onTapGesture {
                print("My ")
            }
            Text("Posts").onTapGesture {
                print("Posts")
            }
            Text("Logout").onTapGesture {
                print("Logout")
            }
        }
    }
}

struct Side: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.menuClose()
            }
            
            HStack {
                MenuContent()
                    .frame(width: self.width)
                    .background(Color.white)
                    .offset(x: self.isOpen ? 0 : -self.width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
}
