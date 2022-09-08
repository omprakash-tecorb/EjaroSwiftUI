//
//  RegistrationView1.swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/09/22.
//

import SwiftUI

struct RegistrationView1: View {
    @Environment(\.dismiss) private var dismiss
    @State var selectId:String  = ""
    @State var selectNationality:String  = ""
    @State var idNumber:String  = ""
    @State var Dob:String  = ""
    @State var FirstName:String  = ""
    @State var birthdate = Date()

    
    var body: some View {
        //      ScrollView
        //        {
        VStack()
        {
          
            VStack(alignment: .leading)
            {
               
            Text("Please enter your details exactly as it appears on your ID")
                .foregroundColor(Color(hex: 0x000000))
                .font(.custom("NeoSansStd-Bold", size: 10))
                .padding(.trailing,80)
                .padding(.top,100)
            }
            Spacer()
           // .padding()
          
           // .padding(.top,200)
//MARK: - ID Type
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(.top,-20)
                TextField("Select ID type",text: $selectId)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding(1)
                // Divider()
            }
            .padding()
            .padding(.top,-80)
            
//MARK: - Nationality Type
            VStack(alignment: .leading){
                Text("Nationality")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(2)
                
                TextField("Saudi Arabia",text: $selectNationality)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding(1)
                // Divider()
            }
            .padding()
            .padding(.top,-30)
//MARK: - ID Number
            VStack(alignment: .leading){
                Text("ID Number")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(2)
                
                TextField("Enter ID number",text: $idNumber)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding(1)
                // Divider()
            }
            .padding()
            .padding(.top,-30)
//MARK: - First Name
            VStack(alignment: .leading){
                Text("First Name")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(2)
                
                TextField("Enter your first name",text: $FirstName)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding(1)
                // Divider()
            }
            .padding()
            .padding(.top,-30)
//MARK: - Last Name
                        VStack(alignment: .leading){
                            Text("Last Name")
                                .font(.custom("NeoSansStd-Bold", size: 13))
                                .padding(2)
                            
                            TextField("Enter your last name",text: $FirstName)
                                .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                                .padding(1)
                                .padding(.bottom,-20)
                            VStack{
                                Color.black.frame(height: 1 / UIScreen.main.scale)
                            }
                            .padding(1)
                            // Divider()
                        }
                        .padding()
                        .padding(.top,-30)
//MARK: - DOB
            VStack(alignment: .leading){
                
                Text("Date of Birth")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .padding(2)
                
               // DatePicker("Date of Birth", selection: $birthdate, displayedComponents: .date)
                           .datePickerStyle(WheelDatePickerStyle())
                
                DatePicker("", selection: $birthdate,in: Date()..., displayedComponents:.date)
              //TextField("12/12/2020",text: $Dob)
                    .frame(minWidth: 0, maxWidth: 300 , maxHeight: 50, alignment: .leading)
                    .padding(1)
                    .padding(.bottom,-20)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
                .padding(1)
                // Divider()
            }
            .padding()
            .padding(.top,-30)
//MARK: - Next
            Spacer()
            NavigationLink(destination: RegistrationView4())
            {
                Text("Next")
                    .frame(width: 500, height: 100, alignment: .center)
                    .background(Color(hex: 0xb2020f))
                    .foregroundColor(.white)
                   
            }
         
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        .navigationBarTitle(Text("REGISTRATION").foregroundColor(.blue),displayMode: .inline)
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true) // Hide default button
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
        //}
    }
}

struct RegistrationView1_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView1()
    }
}

