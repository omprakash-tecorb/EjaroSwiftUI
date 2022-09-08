//
//  TabbarView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 07/09/22.
//

import SwiftUI

struct TabbarView: View {
    @State var isSelectedSearch = false
    @State var isSelectedCars = false
    @State var isSelectedKey = false
    @State var isSelectedMessage = false
    
    
    var body: some View {
        TabView{
           
            SearchView()
           
            .tabItem
                {
                    
                 
                    let image  = isSelectedSearch == true ? "seach_sel" : "seach_unsel"
                     Image(image)
                   // let text = isSelectedSearch == true ? "\(.foregroundColor(.red))" :  "\(.foregroundColor(.black))"
                      //   Text(text)
                        
                        
//                    }
//                    else{
//                        Image("seach_unsel")
//                         Text("Search")
//                            .foregroundColor(.black)
//                        
//             
//                    }
//                  
             }
            MyCarsView()
                .tabItem {
                    Image("host_unsel")
                    Text("My Cars")
                }
            BookingsView()
                .tabItem
            {
                Image("trips_unsel")
                Text("Bookings")
            }
            MessageView()
                .tabItem
            {
                Image("messages_unsel")
                Text("Message")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
