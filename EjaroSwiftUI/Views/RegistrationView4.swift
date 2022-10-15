//
//  RegistrationView4.swift
//  EjaroSwiftUI
//
//  Created by Apple on 05/09/22.
//

import SwiftUI

struct RegistrationView4: View {
    @State var phoneNumber:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State var confirmPassword:String = ""
    @State var refferelCode:String = ""
    
    
    var body: some View {
     
        VStack(alignment: .leading){
            Text("WELCOME,")
                .bold()
                .font(.custom("NeoSansStd-Bold", size: 18))
                .foregroundColor(Color(hex: 0xb2020f))
            Text("MOHAMMED HTIM KHASHOGGI,")
                .bold()
                .font(.custom("NeoSansStd-Bold", size: 18))
            VStack(alignment: .leading){
                Text("Phone Number")
                    .padding(.top)
                    .font(.custom("NeoSansStd-Bold", size: 13))
                HStack{
                    Text("+966")
                        .foregroundColor(Color(hex: 0xb000000))
                        .padding(.top,10)
                      
                    TextField("Enter Phone number",text: $phoneNumber)
                        .frame(width: .infinity, height: 40)
                        .padding(.bottom,-5)
                }
               
                VStack{
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                }
                
            }
            VStack(alignment: .leading){
                Text("Email")
                    .padding(.top)
                    .font(.custom("NeoSansStd-Bold", size: 13))
                TextField("Enter your email ",text: $email)
                    .frame(width: .infinity, height: 40)
                    .padding(.bottom,-5)
                
                VStack{
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                }
                
            }
            VStack(alignment: .leading){
                Text("Password")
                    .padding(.top)
                    .font(.custom("NeoSansStd-Bold", size: 13))
                SecureField("**************",text: $password)
               
                    .frame(width: .infinity, height: 40)
                    .padding(.bottom,-5)
                
                VStack{
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                }
                
            }
            VStack(alignment: .leading){
                Text("Confirm Password")
                    .padding(.top)
                    .font(.custom("NeoSansStd-Bold", size: 13))
                SecureField("**************",text: $confirmPassword)
                
                VStack{
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                }
                
            }
            VStack(alignment: .leading){
                Text("Referral Code (optional)")
                    .padding(.top)
                    .font(.custom("NeoSansStd-Bold", size: 13))
                TextField("A76F5D",text: $refferelCode)
                    .frame(width: .infinity, height: 40)
                    .padding(.bottom,-5)
                
                VStack{
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                }
                
            }
            Spacer()
            VStack{
                NavigationLink(destination: FirnitureUi())
                {
                    Text("Submit")
                    
                }
                .frame(maxWidth:600,maxHeight: 80)
                .background(Color(hex: 0xb2020f))
                .foregroundColor(.white)
               // .padding(.bottom,20)
            }
            .padding([.leading,.trailing],-100)
           
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .padding(.top,50)
        .padding(.horizontal,30)
   
       
        .navigationBarTitle("REGISTRATION")
        .navigationBarBackButtonHidden(true)
    }
}

struct RegistrationView4_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView4()
    }
}

