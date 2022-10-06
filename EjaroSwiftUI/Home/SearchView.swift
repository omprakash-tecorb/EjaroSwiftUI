//
//  SearchView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 07/09/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        //  ScrollView
        // {
        VStack{
            searchCity()
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .previewDevice("iPhone 13 Pro Max")
    }
}

struct searchCity:View{
    @State private var searchText = ""
    var body: some View
    {
        // ZStack{
        
        GeometryReader{ geo in
            //  ScrollView {
            Image("landing_header_top")
                .resizable()
                .frame(width: geo.size.width, height: geo.size.height/2)
                .edgesIgnoringSafeArea(.top)
            VStack(alignment: .leading){
                HStack{
                    Image("menu_icon")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Welcome back,")
                        Text("MOHAMMED")
                    }
                }
                //.frame( height: 40)
                //  .padding(.top,-geo.size.width/7)
                .foregroundColor(.white)
                
                HStack{
                    Image("seach_unsel")
                        .padding(.leading,100)
                        .frame(width:10,height:10)
                    TextField("Enter city, address, airport or hotel", text: $searchText)
                        .padding(.leading,50)
                }
                .frame( height: 40)
                .background(.white)
                .cornerRadius(40)
                .padding()
                
                VStack(alignment: .leading){
                    Text("The First Licensed Peer-to-Peer ")
                        .fontWeight(.black)
                        .bold()
                    Text("Vehicle Sharing Community in Saudi Arabia")
                        .fontWeight(.regular)
                    
                }
                .foregroundColor(.white)
                .padding()
                //.padding(.top,geo.size.width/50)
                
                
                Image("community_logo")
               // .padding(.bottom,100)
               
                vehicleNearBy()
            }
           // .padding()
            .frame(width: geo.size.width, height: geo.size.height/1.8)
            //.padding()
            
        }
      
    }
    
}


struct vehicleNearBy:View{
    @State var vehicleArr = ["front_photo","front_photo","front_photo","front_photo","front_photo","front_photo","front_photo"]
    var body: some View
    {
        VStack {
            Text("Vehicles NearBy")
            .foregroundColor(.black)
            .padding(.leading,-180)
            HStack
            {
               Divider()
              
                    ScrollView(.horizontal) {
                        VStack{
                        HStack(spacing: 5) {
                                ForEach(0..<10) { index in
                                Image("cg_header")
                                    //.resizable()
                                    .scaledToFill()
                            }
                        }
                            HStack(alignment: .center) {
                                    ForEach(0..<10) { index in
                                  Text("Hyundai")
                                 .padding(.leading,200)
                                }
                              }
                           }
                         .frame( height: 100)
                         .padding(.bottom,100)
                    }
                //}

               // Divider()
            }
        }
        
    }
    
}
