//
//  LoginView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 30/08/22.
//

import SwiftUI

struct LoginView: View {
    @State var textFieldEmail:String = ""
    var body: some View {
        ZStack{
            Image("landing_header_top")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                VStack{
                    Text("Welcome back!")
                    .foregroundColor(.white)
                    .font(.custom("NeoSansStd-Regular", size: 25))
                    .padding(.top,-268)
                  
                    
                    Text("Login to your account")
                        .padding(.top,-250)
                        .foregroundColor(.white)
                   }
                
                VStack(alignment: .leading, spacing: 1){
                    Text("Email Address")
                        .font(.custom("NeoSansStd-Bold", size: 14))
                        .foregroundColor(.white)
                        .padding(3)
                    HStack(spacing:10){
                        Image("email_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(1)
                      
                        
                       TextField("Enter email address ", text: $textFieldEmail)
                          .frame(width: 250, height: 40)
                          .foregroundColor(.white)
                    }
                   
                        Text("")
                           //.frame(width: 300, height: 1, alignment: .center)
                        .padding([.leading,.trailing],150)
                           .background(.white)
                           .padding(.top,1)
                           .frame( height: 1)
                    
                }
                .padding(.top,-210)
               
            }
            
            
           
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
