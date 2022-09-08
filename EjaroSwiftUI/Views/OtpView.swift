//
//  OtpView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 06/09/22.
//

import SwiftUI

struct OtpView: View {
  
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Verification code")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top,100)
                    .padding(.leading,20)
                Text("")
                Text("We have sent you a verification code")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.leading,20)
            }
            .padding(.top,-400)
           
                //.padding()
           HStack{
                VStack(){
                    otpText()

                    Otpline()

                }
              //  .padding(.top,190)
              //  Spacer()
                
            }
           .frame(width: 400, height: 100)
            
           .padding(.top,-200)
           // Spacer()
           
        }
       
    }
}

struct OtpView_Previews: PreviewProvider {
    static var previews: some View {
        OtpView()
          // .previewDevice("iPhone 13 Pro Max")
          // .previewDevice("iPhone 8")
           .previewDevice("iPhone 12")
    }
}

struct Otpline:View
{
    var body: some View
    {
        GeometryReader { geo in
        
        HStack(){
           
               Text("")
                .frame(width: geo.size.width/6, height: 2)
                .background(.black)
         
            Text("")
                 .frame(width: geo.size.width/6, height: 2)
                 .background(.black)

            Text("")
                 .frame(width: geo.size.width/6, height: 2)
                 .background(.black)
            Text("")
                 .frame(width: geo.size.width/6, height: 2)
                 .background(.black)
        }
        .padding(.leading,55)
     //   .padding(.top,-80)
       //
    }
    }
}

struct otpText:View
{
    @State var otp1 = ""
    @State var otp2 = ""
    @State var otp3 = ""
    @State var otp4 = ""
    
    var body: some View
    {
        GeometryReader {geo in
        
        HStack{
            
                TextField("1",text: $otp1)
                .frame(width: geo.size.width/8, height: 40)
                .padding()
            TextField("2",text: $otp2)
            .frame(width: geo.size.width/8, height: 40, alignment: .center)
            
            TextField("3",text: $otp3)
            .frame(width: geo.size.width/8, height: 40, alignment: .center)
            .padding()
            
            TextField("4",text: $otp4)
                .frame(width: geo.size.width/8, height: 40)
                .padding(1)
        }
        .padding(.leading,70)
       // .padding(.top,160)
        Spacer(minLength: 2)
        
    }
    }
}
