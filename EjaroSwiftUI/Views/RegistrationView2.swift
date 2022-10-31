//
//  RegistrationView2.swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/09/22.
//

import SwiftUI

struct RegistrationView2: View {
    @Environment(\.dismiss) private var dismiss
    @State var selectId = ""
    @State var passport = ""
    @State var nationality = ""
    @State var Dob = ""
    @State var passportNumber = ""
    @State var SaudiVisaNo = ""
    
    var body: some View {
       
        VStack(){

            HStack{
                // MARK: - image Inside Circle
                   
                circleImage()
            }
            .frame(width: .infinity, height: 45)
            .padding([.leading,.trailing],30)
            .padding(.top,20)
            
            Text("Please enter your details exactly as it appears on your ID")
                .foregroundColor(Color(hex: 0x000000))
                .font(.custom("NeoSansStd-Bold", size: 10))
                .padding(.trailing,120)
                .padding(.top,50)
             
            //MARK: - ID Type
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(.top,-20)
                TextField("Passport",text: $passport)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding([.leading,.trailing],1)
                .padding(.top,20)
                // Divider()
            }
            .padding()
            .padding(.top,50)
            
            //MARK: - Nationality Type
            VStack(alignment: .leading){
                Text("Nationality")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(.top,-20)
                TextField("Saudi Arabia",text: $nationality)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding([.leading,.trailing],1)
                .padding(.top,20)
                // Divider()
            }
            .padding()
            .padding(.top,10)
            
            //MARK: - DOB
            VStack(alignment: .leading){
                Text("Date of Birth")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(.top,-20)
                TextField("12/12/2020",text: $Dob)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding([.leading,.trailing],1)
                .padding(.top,20)
                // Divider()
            }
            .padding()
            .padding(.top,10)
            
            //MARK: - Passport Type
            VStack(alignment: .leading){
                Text("Passport Number")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(.top,-20)
                TextField("Enter your last name",text: $passportNumber)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding([.leading,.trailing],1)
                .padding(.top,20)
                // Divider()
            }
            .padding()
            .padding(.top,10)            
            //MARK: - Saudi Entry Visa Number
            VStack(alignment: .leading){
                Text("Saudi Entry Visa Number")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(.top,-20)
                TextField("12/12/2020",text: $SaudiVisaNo)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding([.leading,.trailing],1)
                .padding(.top,20)
                // Divider()
            }
            .padding()
            Spacer()
            
          
           NavigationLink(destination: Registration3())
           // NavigationLink(destination:   FirnitureUi())
            {
                Text("Next")
                    .frame(width: 500, height: 100, alignment: .center)
                    .background(Color(hex: 0xb2020f))
                    .foregroundColor(.white)
            }
         
        }
        //.padding()
        .padding(.top,80)
       // .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        .navigationBarTitle(Text("REGISTRATION"),displayMode: .inline)
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true) // Hide default button
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
    }
}

struct RegistrationView2_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView2()
           // .previewDevice("iPhone  13 Pro Max")
        
        
    }
}

struct circleImage:View
{
    var body:some View
    {
        Text("1")
            .frame(width: 20, height: 20)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(Color(hex: 0xb2020f),                    lineWidth: 9))
            .foregroundColor(.white)
            .background(Color(hex: 0xb2020f))
        Spacer()
        VStack{
            Color.black.frame(height: 5 / UIScreen.main.scale)
        }
    Text("2")
        .frame(width: 20, height: 20)
        .clipShape(Circle())
        .shadow(radius: 10)
        .overlay(Circle().stroke(Color(hex: 0xbCCCCCC),                    lineWidth: 9))
        .foregroundColor(.white)
        .background(Color(hex: 0xbCCCCCC))
        Spacer()
        VStack{
            Color.black.frame(height: 4 / UIScreen.main.scale)
        }
    Text("3")
        .frame(width: 20, height: 20)
        .clipShape(Circle())
        .shadow(radius: 10)
        .overlay(Circle().stroke(Color(hex: 0xbCCCCCC),                    lineWidth: 9))
        .foregroundColor(.white)
        .background(Color(hex: 0xbCCCCCC))
    }
}
