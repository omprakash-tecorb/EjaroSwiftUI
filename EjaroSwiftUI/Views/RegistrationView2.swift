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
//            VStack
//            {
            Text("Please enter your details exactly as it appears on your ID")
                .foregroundColor(Color(hex: 0x000000))
                .font(.custom("NeoSansStd-Bold", size: 10))
                .padding(.trailing,70)
            
            //}
           // .padding()
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
            
            
            NavigationLink(destination: RegistrationView1())
            {
                Text("next")
                    .frame(width: 500, height: 80, alignment: .center)
                    .background(.red)
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
