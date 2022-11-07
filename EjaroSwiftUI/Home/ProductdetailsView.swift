//
//  ProductdetailsView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 07/11/22.
//

import SwiftUI

struct ProductdetailsView: View {
    let receiveIndx:String
    let Value = Int(720)
    var imageArr = ["bed6","di1","di4","sofa2","tab6","chair4"]
    var priceArr = ["10","20","30","40","50","60","70","80","90"]
    @State  var compareData:String = "1"
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        if #available(iOS 16.0, *) {
            ScrollView{
                VStack(alignment: .leading)
                {
                    HStack
                    {
                        ForEach(0..<imageArr.count){ind in
                            if receiveIndx == "\(ind)"
                            {
                                Image("\(imageArr[ind])")
                                   
                                    .resizable()
                                .frame(width: 60,height:100)
                                    .padding()
                            }
                        }
                        ForEach(0..<priceArr.count){inds in
                            if receiveIndx == "\(inds)"
                            {
                                Text("NagarInternation fully Strong\nfirniture \n")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                + Text("Rs\( Value * (inds + 1))")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.black)
                                                               }
                        }
                    }
                    Divider()
                        .frame(height: 10)
                        .background(Color.black.opacity(0.2))
                        .padding(.top,-15)

                    HStack{
                        VStack
                        { Button(action: {self.compareData = "1"})
                            {
                                Text("SPECIFICATIONS")
                                .foregroundColor(Color.black)
                                .offset(x: -5)
                              
                            }
                           
                            if self.compareData == "1"
                            {
                                Text("")
                                .frame(width:  UIScreen.main.bounds.width/2,height:3)
                                //  .padding(.top,16)
                                  .background(Color.blue)
                                  .offset(x:-1,y:13)
                               
                            }
                        }
                        Spacer()
                        VStack{
                            Button(action: {self.compareData = "2"})
                            {
                                Text("MORE INFO")
                                .foregroundColor(Color.black)
                                .offset(x:-5)
                              
                            }
                            if self.compareData == "2"
                            { Text("")
                                    .frame(width:  UIScreen.main.bounds.width/2,height: 3)
                                    .background(Color.blue)
                                    .offset(x:2,y:13)
                                
                            }
                        }
                    }
                    .padding()
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.black.opacity(0.2))
                        .padding(.top,-15)
                    if self.compareData == "1"
                    {  Specification()
                        
                    }
                    else if self.compareData == "2"
                    {
                        MoreInfo()
                    }
                }
           }
            .scrollDisabled(true)
            //MARK: - NavigationbarTitle
                .navigationBarItems(leading: Text("Product Details"))
                .foregroundColor(Color.white)
            
            //MARK: - NavigationBack Button
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss,text: "",image: "back_arrow_auth"))
            
            //MARK: - Navigationbar Color
                .toolbarBackground(Color.pink,for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ProductdetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductdetailsView(receiveIndx: "receiveIndex", compareData: "")
    }
}

struct Specification:View
{
    var body: some View
    {
        if #available(iOS 16.0, *) {
            ScrollView
            {
                VStack(alignment: .leading)
                {
                    Text("Key feature")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Text("* Pattern: Solid")
                        .foregroundColor(Color.black)
                    Text("* Suitable For : Western Style")
                        .foregroundColor(Color.black)
                    Text("* Strong Wood")
                        .foregroundColor(Color.black)
                    Text("* Type:Party Type")
                        .foregroundColor(Color.black)
                    Text("General")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    List
                    {
                        HStack
                        {
                            Text("Color")
                                .foregroundColor(Color.black)
                            Text("Gold")
                                .foregroundColor(Color.black)
                        }
                    }
                }
                .padding(.leading)
            }
        }
    }
}
struct MoreInfo:View
{
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Text("Generic Name")
                .foregroundColor(Color.black)
            + Text("        Wooden")
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
            Text("Country of Origin")
                .foregroundColor(Color.black)
            + Text("       India")
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
        }
        .padding()
    }
}
