//
//  ForgotPasswordView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 06/09/22.
//

import SwiftUI

struct ForgotPasswordView: View {
   
    var body: some View {
        ZStack(alignment: .bottom){
       Color.black
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            ExtractedView()
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}

    struct ExtractedView: View {
    @State private var emailAddress:String = ""
    var body: some View {
        VStack{
            Text("Forgot Your Password?")
                .foregroundColor(Color(hex: 0xb2020f))
                .bold()
                .padding(.top,20)
            Text("Enter your email address and we will send\n you a link to reset your password")
                .multilineTextAlignment(.center)
                .padding(.top,10)
            Label("Email Address", systemImage: "")
                .font(.title2)
                .padding(.leading,-190)
            TextField("Enter your email address", text: $emailAddress)
                .frame(width: 330, height: 40)
                .padding(.leading,-30)
            VStack{
                Color.black.frame(height: 1 / UIScreen.main.scale)
            }
            //Spacer()
            .padding(.leading,65)
            .padding(.trailing,65)
            Spacer()
            NavigationLink(destination: RegistrationView4())
            {
                Text("Next")
                    .frame(width: 500, height: 80, alignment: .center)
                    .background(Color(hex: 0xb2020f))
                    .foregroundColor(.white)
                
            }
            
        }
        
        .frame(width: 500, height: 400)
        .ignoresSafeArea()
        .background(Color.white)
        .background(RoundedCorners(color: .white, tl: 10, tr: 10, bl: 30, br: 0))
    }
}
