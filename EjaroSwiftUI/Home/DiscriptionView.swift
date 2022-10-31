//
//  DiscriptionView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 15/10/22.
//

import SwiftUI

struct DiscriptionView: View {
    // @Binding var receiveImage:String
    let receiveImage:String
    var body: some View {
        ZStack
        {
            Color.red
                .edgesIgnoringSafeArea(.all)
            ScrollView()
            {
                VStack(alignment: .leading)
                {
                    Image(receiveImage)
                        .resizable()
                        .aspectRatio(1,contentMode: .fit)
                    discriptioAboutImage()
                }
              
                
            }
            .edgesIgnoringSafeArea(.top)
            
        }
       
    }
}

struct DiscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DiscriptionView(receiveImage: "receiveImage")
    }
}

struct discriptioAboutImage:View
{
    var body: some View
    {
        VStack (alignment: .leading,spacing: 20) {
            //                Title
            Text("Luruxy Swedia \nChair")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            description()
        }
        .padding(.leading)
       
        .cornerRadius(2, corners: [.topLeft,.topRight])
    }
}

struct description:View
{
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Text("Discription")
            Text("")
            Text("This product is too good and Strong for any type of Codition it will be statble so i will suggest to purchase this ")
        }
        .foregroundColor(Color.white)
    }
}
