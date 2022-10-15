//
//  LoginView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 30/08/22.
//

import SwiftUI

struct LoginView: View {
    @State var textFieldEmail:String = ""
    @State var index = 0
    @State var moveData:Bool = false
    var body: some View {
       
        ZStack{
 //MARK: - Background Image
          //  ScrollView()
           // {
            Image("landing_header_top")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(){
 //MARK: - Welcome Back
                VStack(alignment: .leading){
                    Text("Welcome back!")
                    .foregroundColor(.white)
                    .font(.custom("NeoSansStd-Regular", size: 25))
                    .padding(.top,-250)
                  
                    
                    Text("Login to your account")
                        .padding(.top,-245)
                        .foregroundColor(.white)
                   }
                .padding(.leading,-150)
                //.padding(.trailing,195)
 //MARK: - Email Address And Image
                VStack(alignment: .leading, spacing: 1){
                    Text("Email Address")
                        .font(.custom("NeoSansStd-Bold", size: 14))
                        .foregroundColor(.white)
                        //.padding(3)
                    HStack(spacing:10){
                        Image("email_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(1)
 //MARK: - Textfield Email
                       TextField("Enter email address", text: $textFieldEmail)
                            .foregroundColor(Color.white)
                            .frame(width: 250, height: 40)
                            .foregroundColor(.black)
                     
                       }
                        Text("")
                        .frame( height: 1, alignment: .center)
                        .padding(.leading, 155)
                        .padding(.trailing, 155)
                       
                        .background(.white)
                        
                           
                           //.frame( height: 1)
                }
                .padding(.top,-200)
                .padding(.leading,-15)
             
//MARK: - Password And Image
                VStack(alignment: .leading, spacing: 1){
                         Text("Password")
                        .font(.custom("NeoSansStd-Bold", size: 14))
                        .foregroundColor(.white)
                        .padding()
                    HStack(spacing:10){
                        Image("password_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(1)
                            .padding(.leading,20)
 //MARK: - Textfield Password
                       TextField("Enter your password ", text: $textFieldEmail)
                          .frame(width: 250, height: 40)
                          .foregroundColor(.white)
                    }
                        Text("")
                           .frame( height: 1, alignment: .center)
                           .padding(.trailing, 155)
                           .padding(.leading, 155)
                           .background(.white)
                           .padding()
                           //.frame( height: 1)
                    
                    Button(action:{
                        self.index = 1
                        self.moveData = true
                        
                    })
                    {
                        VStack{
                            Text("Forgot Your Password")
                               // .padding()
                                .foregroundColor(Color.white)
                                .padding(.leading,160)
                                .padding(.top,-10)
                            
                            Text("----------------------")
                               
                                .padding(.leading,160)
                              //  .padding(.trailing,1)
                                .padding(.top,-20)
                                .foregroundColor(Color.white)
                        }
                    }
                    .sheet(isPresented: $moveData)
                    {
                        ForgotPasswordView()
                            .ignoresSafeArea(.all)
                    }
                    
                }
                .padding(.top,-127)
                
                NavigationLink(destination: TabbarView())
                {
                Text("SignIn")
                    .padding(.trailing, 140)
                    .padding(.leading, 140)
                    .frame( minHeight: 45)
                    .background(Color(hex: 0xb2020f))
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                }
                
                HStack{
                    Text("Dont have an account?")
                        .padding(.leading,15)
                    NavigationLink(destination: RegistrationView2())
                  //  NavigationLink(destination: CommunityGuidView())
                    {
                        Text("Register Now")
                            .padding(.leading,-15)
                            .font(.title3)
                            .padding([.leading,.trailing], 20)
                            .frame( minHeight: 45)
                           
                    }
                   
                    
                }
               
                .foregroundColor(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.white,lineWidth: 0.5))
                
               
            }
            //.padding(.leading,10)
           // .padding(.leading,10)
        .padding()
     
        }
       
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
           
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
