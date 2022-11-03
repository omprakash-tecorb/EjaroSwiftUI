//
//  PopularDescriptionView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 02/11/22.
//

import SwiftUI
import UIKit

struct PopularDescriptionView: View {
    @State var islike = true
    @Environment(\.dismiss) private var dismiss
    let indx:String
    var imageArr = ["bed6","di1","di4","sofa2","tab6","chair4"]
    var priceArr = ["10","20","30","40","50","60","70","80","90"]
    
    var body: some View {
        if #available(iOS 16.0, *) {
            ZStack
            {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                ScrollView
                {
                    VStack(alignment: .leading)
                    {
                        if let data = Int(indx)
                        {
                            Image(imageArr[data])
                                .resizable()
                                .frame(height: 300)
                            
                                .overlay(
                                    HStack{
                                        Text("")
                                        Spacer()
                                        VStack
                                        {
                                            Text("")
                                            Spacer()
                                            Button(action: { islike = !islike})
                                            {
                                                if islike
                                                {
                                                    
                                                    Image("like")
                                                        .resizable()
                                                        .frame(width: 50,height: 40)
                                                        .scaledToFit()
                                                        .background(Color.white)
                                                    
                                                }
                                                else
                                                {
                                                    Image("dislike")
                                                        .resizable()
                                                        .frame(width: 40,height: 40)
                                                        .scaledToFit()
                                                        .background(Color.white)
                                                    
                                                }
                                                
                                            }
                                            .cornerRadius(10.0)
                                            .padding(20)
                                            
                                            
                                        }
                                        
                                    }
                                )
                        }
                        
                        Text("  Nagar InterNational ")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                        + Text("Fully Strong")
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                        
                        ForEach(0..<priceArr.count){ index in
                            if indx == "\(index)"
                            {
                                HStack
                                {
                                    Text("  Total price")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.red)
                                    
                                    
                                    Text("$\(priceArr[index])")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.black)
                                    
                                } .offset(x: 0, y: 5)
                                
                            }
                            
                        }
                        
                        showAllDetails(inde: "\(indx)")
                        
                        
                        
                    }
                    .background(Color.white)
                    
                }
                // .edgesIgnoringSafeArea(.top)
            }
            
            
            
            .navigationBarItems(leading: Text("Popular"))
            .foregroundColor(Color.red)
            
            .navigationBarTitle(Text("Popu"))
            .navigationBarTitleTextColor(Color.green)
            
            .navigationBarItems(trailing: Text("Popular"))
            .foregroundColor(Color.blue)
            
           // .toolbarBackground(Color.pink,for: .navigationBar)
           .toolbarBackground( Color.pink, for: .navigationBar)
         .toolbarBackground(.visible, for: .navigationBar)
            
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss,text: "",image: "back_arrow_auth"))
        } else {
            // Fallback on earlier versions
        }
    }
}

struct PopularDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDescriptionView(indx: "indx")
    }
}



struct showAllDetails:View
{
    var priceArr = ["","10","20","30","40","50","60","70","80","90"]
    let Value = Int(720)
    let inde:String
    var body: some View
    {
        HStack(){
            Text("10% Off")
                .foregroundColor(Color.green)
            
               ForEach(0..<priceArr.count){index in
                   if "\(index)" == "\(inde)"
                   {
                       Text(" Rs\( Value * (index + 1))")
                             .foregroundColor(Color.black)
                             .fontWeight(.semibold)
                   }
            }
          
        }
        .padding(.leading, 8)
        .offset(x: 0, y: 6)
        Text("  FREE Delivery")
        .offset(x: 0, y: 6)
    }
}
