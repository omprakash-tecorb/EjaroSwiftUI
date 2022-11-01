//
//  CommunityGuidView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 07/09/22.
//

import SwiftUI

struct CommunityGuidView: View {
    var body: some View {
        VStack{
            GeometryReader{ geo in
                ScrollView() {
                    VStack{
                        Image("landing_header_top")
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.height/2.5)
                            .scaledToFill()
                        
                        GuideLines()
                    }
                    
                }
                
                .edgesIgnoringSafeArea([.top, .bottom])
                VStack{
                    Spacer(minLength: 10)
                    Text("I UNDERSTAND")
                        .multilineTextAlignment(.center)
                        .frame(width: geo.size.width, height: geo.size.height/15)
                        .background(Color(hex: 0xbC00006))
                        .foregroundColor(.white)
                        .font(.custom("NeoSansStd-Bold", size: 13))
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        
    }
}

struct CommunityGuidView_Previews: PreviewProvider {
    static var previews: some View {
        //        CommunityGuidView()
        //          .previewDevice("iPhone 13 Pro Max")
        CommunityGuidView()
            .previewDevice("iPhone 8")
        
    }
}

struct GuideLines: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Ejaro’s Community Guidelines")
                .font(.custom("NeoSansStd-Bold", size: 16))
                .foregroundColor(Color(hex: 0xbC00006))
            Text("A Trustworthy Community")
                .padding(1)
                .font(.custom("NeoSansStd-Bold", size: 13))
                .foregroundColor(Color(hex: 0xb000000))
            
            Text("we are commited to keeping our community safe and secure, everyone who uses any of Ejaro’s platforms is expected to follow these guidelines:")
            // .multilineTextAlignment(.center)
            // .padding(1)
                .font(.custom("NeoSansStd-Regular", size: 13))
                .foregroundColor(Color(hex: 0xb000000))
                .padding(.horizontal,0)
            
            HStack{
                Image("treat_everyone_cg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                Text("Treat everyone with kindness and respect")
                    .font(.custom("NeoSansStd-Bold", size: 12))
            }
            .padding(1)
            HStack{
                Image("vehicle_icon_cg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                Text("Look after each other’s vehicles")
                    .font(.custom("NeoSansStd-Bold", size: 12))
            }
            .padding(1)
            HStack{
                Image("law_icon_cg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                Text("Follow the law")
                    .font(.custom("NeoSansStd-Bold", size: 12))
            }
            .padding(1)
            
            ClickToAgree()
            
            
        }
        .padding()
        .padding(.top,25)
        .padding(.horizontal,28)
    }
}

struct ClickToAgree: View {
    @State var isSelectedTerm:Bool = false
    @State var isSelectedPrivacy:Bool = false
    @State var isSelectedCancellation:Bool = false
    @State var isSelectedPayment:Bool = false
    var body: some View {
        VStack(alignment: .leading){
            Text("Please click to agree on the following:")
                .font(.custom("NeoSansStd-Bold", size: 13))
            
            HStack{
                Button(action:{
                    self.isSelectedTerm.toggle()}
                       , label: {
                    if isSelectedTerm == true{
                        Image("checkbox_sel_cg")
                            .frame(width: 20, height: 20)
                        Text("Terms of use")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                    else{
                        Image("checkbox_unsel_cg")
                            .frame(width: 20, height: 20)
                        Text("Terms of use")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                })
                Spacer()
                Text("Read more")
                    .foregroundColor(Color(hex: 0xb000000))
                    .font(.custom("NeoSansStd-Regular", size: 12))
                Image("question")
                    .resizable()
                    .frame(width: 20, height: 20)
                //  Text("   ")
            }
            
            HStack{
                Button(action:{
                    self.isSelectedPrivacy.toggle()}
                       , label: {
                    if isSelectedPrivacy == true
                    {
                        Image("checkbox_sel_cg")
                            .frame(width: 20, height: 20)
                        Text("Privacy Policy")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                    else{
                        Image("checkbox_unsel_cg")
                            .frame(width: 20, height: 20)
                        Text("Privacy Policy")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                    
                })
                Spacer()
                Text("Read more")
                    .foregroundColor(Color(hex: 0xb000000))
                    .font(.custom("NeoSansStd-Regular", size: 12))
                Image("question")
                    .resizable()
                    .frame(width: 20, height: 20)
                //  Text("   ")
            }
            HStack{
                Button(action:{
                    self.isSelectedCancellation.toggle()}
                       , label: {
                    if isSelectedCancellation == true
                    {
                        Image("checkbox_sel_cg")
                            .frame(width: 20, height: 20)
                        Text("Cancellation & refund")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                    else{
                        Image("checkbox_unsel_cg")
                            .frame(width: 20, height: 20)
                        Text("Cancellation & refund")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                    
                })
                Spacer()
                Text("Read more")
                    .foregroundColor(Color(hex: 0xb000000))
                    .font(.custom("NeoSansStd-Regular", size: 12))
                Image("question")
                    .resizable()
                    .frame(width: 20, height: 20)
                //  Text("   ")
            }
            HStack{
                Button(action:{
                    self.isSelectedPayment.toggle()}
                       , label: {
                    if isSelectedPayment == true
                    {
                        Image("checkbox_sel_cg")
                            .frame(width: 20, height: 20)
                        Text("Payments")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                    else{
                        Image("checkbox_unsel_cg")
                            .frame(width: 20, height: 20)
                        Text("Payments")
                            .foregroundColor(Color(hex: 0xb000000))
                            .font(.custom("NeoSansStd-Regular", size: 12))
                    }
                    
                })
                Spacer()
                Text("Read more")
                    .foregroundColor(Color(hex: 0xb000000))
                    .font(.custom("NeoSansStd-Regular", size: 12))
                Image("question")
                    .resizable()
                    .frame(width: 20, height: 20)
                //  Text("   ")
            }
        }
        .padding(.top)
        
    }
}
