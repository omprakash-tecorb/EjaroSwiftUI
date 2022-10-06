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
    @State var tab = 1
    
    var body: some View {
        TabView{
         
            SearchView()
            .tabItem
                {
//                    if tab == 1
//                    {
                        Image("seach_unsel")
                        Text("Search")
                            .tint(Color.red)
                            .foregroundColor(Color(.red))
                       
               // }
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
        .accentColor(.red)
        
       
       
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
