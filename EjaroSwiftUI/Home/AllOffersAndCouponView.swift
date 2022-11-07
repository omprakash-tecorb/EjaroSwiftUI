//
//  AllOffersAndCouponView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 04/11/22.
//

import SwiftUI

struct AllOffersAndCouponView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(.vertical)
                {
                    VStack
                    { HStack{
                        Button(action: {dismiss()})
                        {
                            Image("close_button")
                                .frame(width: 200,height: 20)
                                .offset(x:-60,y: 10)
                        }
                        Text("All Offers and Coupons")
                                .offset(x:-150,y: 10)
                    }
                       Divider()
                            .frame(height: 5)
                            .background(Color.gray.opacity(0.2))
                            .offset(y:10)
                        
                        if #available(iOS 16.0, *) {
                            Text("Partner Offer")
                                .offset(x:-110,y:30)
                                .fontWeight(.semibold)
                        }
                        
                        Button(action: {})
                        {
                            RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                                       .stroke(Color.gray, lineWidth: 1.0)
                                     
                            )
                            
                            .offset(x:-9,y:25)
                            .frame(width: 300, height: 50)
                            .overlay(
                                      Text("SignUp for Flipcart Pay later and get \n FlipCart Gift Card Worth up to 100")
                                        .offset(x:-9,y: 20)
                                        .foregroundColor(Color.black)
                                  )
                           
                        }
                        .padding()
                        Button(action: {})
                        {
                            RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                                       .stroke(Color.gray, lineWidth: 1.0)
                                     
                            )
                            
                            .offset(x:-9,y:25)
                            .frame(width: 300, height: 50)
                            .overlay(
                                      Text("SignUp for Flipcart Pay later and get \n FlipCart Gift Card Worth up to 100")
                                        .offset(x:-9,y: 20)
                                        .foregroundColor(Color.black)
                                  )
                           
                        }
                        
                        
                        
                        if #available(iOS 16.0, *) {
                            Text("Bank Offer")
                                .offset(x:-110,y:30)
                                .fontWeight(.semibold)
                        }
                        
                        Button(action: {})
                        {
                            RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                                       .stroke(Color.gray, lineWidth: 1.0)
                                     
                            )
                            
                            .offset(x:-9,y:25)
                            .frame(width: 300, height: 50)
                            .overlay(
                                      Text("5% Cashback on FlipKart Axis Bank Card")
                                        .offset(x:-19,y: 20)
                                        .foregroundColor(Color.black)
                                  )
                           
                        }
                    }
                  
           }

    }
    
}

struct AllOffersAndCouponView_Previews: PreviewProvider {
    static var previews: some View {
        AllOffersAndCouponView()
    }
}
