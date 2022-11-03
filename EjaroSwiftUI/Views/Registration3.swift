//
//  Registration3.swift
//  EjaroSwiftUI
//
//  Created by Apple on 03/09/22.
//

import SwiftUI
struct Registration3: View {
    @State var GCC:String = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ScrollView()
        {
        VStack(){
           
            
           Text("Please enter your details exactly as it appears on your ID")
                .padding(.leading,-100)
                .frame( height: 32)
                .font(.custom("NeoSansStd-Bold", size: 10))
            Spacer()
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .frame(height: 13)
                    .padding(.top,20)
                TextField("GCC National",text: $GCC)
                    .frame( width: 300 ,height: 50, alignment: .leading)
                    .padding(.top,10)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
            }
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .frame(height: 13)
                    .padding(.top,20)
                TextField("GCC National",text: $GCC)
                    .frame( width: 300 ,height: 50, alignment: .leading)
                    .padding(.top,10)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
            }
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .frame(height: 13)
                    .padding(.top,20)
                TextField("GCC National",text: $GCC)
                    .frame( width: 300 ,height: 50, alignment: .leading)
                    .padding(.top,10)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
            }
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .frame(height: 13)
                    .padding(.top,20)
                TextField("GCC National",text: $GCC)
                    .frame( width: 300 ,height: 50, alignment: .leading)
                    .padding(.top,10)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
            }
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .frame(height: 13)
                    .padding(.top,20)
                TextField("GCC National",text: $GCC)
                    .frame( width: 300 ,height: 50, alignment: .leading)
                    .padding(.top,10)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
            }
            VStack(alignment: .leading){
                Text("ID Type")
                    .font(.custom("NeoSansStd-Bold", size: 13))
                    .frame(height: 13)
                    .padding(.top,20)
                TextField("GCC National",text: $GCC)
                    .frame( width: 300 ,height: 50, alignment: .leading)
                    .padding(.top,10)
                VStack{
                    Color.black.frame(height: 1 / UIScreen.main.scale)
                }
            }
           
        }
        .frame(minWidth: 0, maxWidth: 380, minHeight: 0, maxHeight: 1000)
          .padding()
            Spacer()
            NavigationLink(destination: RegistrationView1())
            {
                Text("Next")
                    .frame(width: 600, height: 80, alignment: .center)
                    .background(Color(hex: 0xb2020f))
                    .foregroundColor(.white)
                    //.padding(.bottom,20)
                   
                  
            }
        
        .navigationBarTitle(Text("REGISTRATION"),displayMode: .inline)
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true) // Hide default button
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss,text: "Back",image: "back_arrow_auth"))
    }
    }
}

struct Registration3_Previews: PreviewProvider {
    static var previews: some View {
        Registration3()
            .previewDevice("iPhone 12")
    }
}
