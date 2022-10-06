//
//  SelectLanguageView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI

struct SelectLanguageView: View {
    @State var selectEnglish = false
    @State var selectArabic = false
    
    var body: some View {
        VStack{
            Text("Please select your language")
                .bold()
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .padding()
                .padding(.bottom, 8)
            VStack
            {
                NavigationLink(destination: ScrollLeftRightView())
                {
                    Text("العربية  ")
                        .padding([.leading,.trailing], 140)
                        .frame( minHeight: 45)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black,lineWidth: 0.5))
//                        .padding()
                        .foregroundColor(Color.black)
                        .padding()
                }
                
                NavigationLink(destination: ScrollLeftRightView())
                {
                    Text("English")
                        .padding([.leading,.trailing], 140)
                        .frame( minHeight: 45)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black,lineWidth: 0.5))
                        .foregroundColor(Color.black)
                    
                }
            }
            .padding(.bottom,60)
            
        }
        
    }
}

struct SelectLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectLanguageView()
    }
}
