//
//  PopularDescriptionView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 02/11/22.
//

import SwiftUI

struct PopularDescriptionView: View {
    @State var islike = false
    
    let indx:String
    var imageArr = ["bed6","di1","di4","sofa2","tab6","chair4"]
    var priceArr = ["10","20","30","40","50","60","70","80","90"]
    var body: some View {
        ZStack
        {
            Color.white
            .edgesIgnoringSafeArea(.all)
            ScrollView
            {
                VStack
                {
                    if let data = Int(indx)
                    {
                        Image(imageArr[data])
                            .resizable()
                            .frame(height: 300)
                            .overlay(
                        
                      Button(action: { islike = true})
                        {
                            if islike
                            {
                                
                                    Image("like")
                                        .frame(width: 10,height: 10)
                                        .padding(.all,13)
                                        .scaledToFit()
                                   
                            }
                            else
                            {
                                Image("dislike")
                                    .frame(width: 35,height: 35)
                                    .scaledToFit()
                                    .background(Color.white)
                                    .padding(.leading,270)
                                    .padding(.top,200)
                            }
                           
                        }
                        .cornerRadius(10.0)
                              
                   )
                            
                    }
                        
                    ForEach(0..<priceArr.count){ index in
                        if indx == "\(index)"
                        {
                            Text("$\(priceArr[index])")
                                .fontWeight(.medium)
                            
                        }
                    }
                    
                }
                .background(Color.white)
                
            }
            .edgesIgnoringSafeArea(.top)
        }


    }
}

struct PopularDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDescriptionView(indx: "indx")
    }
}
