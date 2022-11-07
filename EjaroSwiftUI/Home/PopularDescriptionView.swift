//
//  PopularDescriptionView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 02/11/22.
//

import SwiftUI
import UIKit

struct PopularDescriptionView: View {
    
    @State var islike = true
    @Environment(\.dismiss) private var dismiss
    @State var isPresenting:Bool = false
    let indx:String
    var imageArr = ["bed6","di1","di4","sofa2","tab6","chair4"]
    var priceArr = ["10","20","30","40","50","60","70","80","90"]
    
    var body: some View {
        
        if #available(iOS 16.0, *) {
            ZStack
            {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                ScrollView()
                {
                    VStack(alignment: .leading)
                    {
                        if let data = Int(indx)
                        {
                            Image(imageArr[data])
                                .resizable()
                                .frame(height: 300)
                            
                                .overlay(
                                    HStack{
                                        Text("")
                                        Spacer()
                                        VStack
                                        {
                                            Text("")
                                            Spacer()
                                            Button(action: { islike = !islike})
                                            {
                                                if islike
                                                {
                                                    
                                                    Image("like")
                                                        .resizable()
                                                        .frame(width: 50,height: 40)
                                                        .scaledToFit()
                                                        .background(Color.white)
                                                    
                                                }
                                                else
                                                {
                                                    Image("dislike")
                                                        .resizable()
                                                        .frame(width: 40,height: 40)
                                                        .scaledToFit()
                                                        .background(Color.white)
                                                    
                                                }
                                                
                                            }
                                            .cornerRadius(10.0)
                                            .padding(20)
                                            
                                            
                                        }
                                        
                                    }
                                )
                        }
                        
                        Text("  Nagar InterNational ")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                        + Text("Fully Strong")
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                        
                        ForEach(0..<priceArr.count){ index in
                            if indx == "\(index)"
                            {
                                HStack
                                {
                                    Text("  Total price")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.red)
                                    
                                    
                                    Text("$\(priceArr[index])")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.black)
                                    
                                } .offset(x: 0, y: 5)
                                
                            }
                            
                        }
                        
                        showAllDetails(inde: "\(indx)")
                        
                        Divider()
                            .frame(height: 5)
                            .background(Color.gray.opacity(0.2))
                        HStack{
                            Button(action: {isPresenting.toggle()})
                            {
                                Text("All Offers & Coupons")
                                    .offset(x: 6,y: 3)
                                    .fontWeight(.semibold)
                                Spacer()
                                Image("next_arrow")
                                    .offset(x:-8,y:3)
                            }
                            .sheet(isPresented: $isPresenting)
                            {
                                AllOffersAndCouponView()
                            }
                            
                            
                        }
                        Divider()
                            .frame(height: 5)
                            .background(Color.gray.opacity(0.2))
                        
                        Text("10 people ordered this in the last 30 days")
                            .offset(x:5)
                        
                        Divider()
                            .frame(height: 5)
                            .background(Color.gray.opacity(0.2))
                        HStack
                        {
                            VStack
                            {
                                Image("lc_check_done")
                                Text("7 DaysReturns")
                            }
                            .offset(x:10)
                            Divider()
                                .background(Color.gray.opacity(0.2))
                                .offset(x:10)
                            
                            VStack
                            {
                                Image("lc_check_done")
                                Text("Cash on delivery \n     available")
                            }
                            .offset(x:10)
                            Divider()
                                .background(Color.gray.opacity(0.2))
                                .offset(x:10)
                            
                            VStack
                            {
                                Image("lc_check_done")
                                Text("plus(F- Assured)")
                            }
                            .offset(x:10)
                            
                        }
                        
                    }
                    .background(Color.white)
                    Divider()
                        .frame(height: 5)
                        .background(Color.gray.opacity(0.2))
                    Text("Manufactured defected or damaged during \n  delivery  item can be replce free")
                        .offset(x:-15)
                    
                    Divider()
                        .frame(height: 5)
                        .background(Color.gray.opacity(0.2))
                       
                    Size()
                      
                    Divider()
                        .frame(height: 5)
                        .background(Color.gray.opacity(0.2))
                        .padding(.top,30)
                    ProductDetails()
                    Divider()
                        .frame(height: 5)
                        .background(Color.gray.opacity(0.2))
                        .padding(.top,15)
                    AllDetails(indx: "\(indx)")
                    Divider()
                        .frame(height: 5)
                        .background(Color.gray.opacity(0.2))
                        .padding(.top,1)
                }
                
            }
            
            
            //MARK: - NavigationBar title Left And Right side
            //   .navigationBarItems(leading: Text("Popular"))
            //   .foregroundColor(Color.red)
            
            //  .navigationBarItems(trailing: Text("Popular"))
            //   .foregroundColor(Color.blue)
            
            //MARK: - NavigationBar Title For Center
            .navigationBarTitle(Text("Popu"))
            .navigationBarTitleTextColor(Color.green)
            
            //MARK: - NavigationBarBackGroundColor Change
            
            // .toolbarBackground(Color.pink,for: .navigationBar)
            .toolbarBackground( Color.pink, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            
            //MARK: - NavigationBack Button
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss,text: "",image: "back_arrow_auth"))
            
            //MARK: - NavigationBar button  Left And Right side
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {})
                    {
                        Text("Confirm")
                            .foregroundColor(Color.white)
                    }
                }
            }
            
        } else {
            
        }
    }
    
}

struct PopularDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDescriptionView(indx: "indx")
        
        
        
    }
}



struct showAllDetails:View
{
    var priceArr = ["","10","20","30","40","50","60","70","80","90"]
    let Value = Int(720)
    let inde:String
    var body: some View
    {
        HStack(){
            Text("10% Off")
                .foregroundColor(Color.green)
            
            ForEach(0..<priceArr.count){index in
                if "\(index)" == "\(inde)"
                {
                    Text(" Rs\( Value * (index + 1))")
                        .foregroundColor(Color.black)
                        .fontWeight(.semibold)
                }
            }
            
        }
        .padding(.leading, 8)
        .offset(x: 0, y: 6)
        Text("  FREE Delivery")
            .offset(x: 0, y: 6)
    }
}

struct Size:View
{
    var body: some View
    {
        if #available(iOS 16.0, *) {
            Text("Size")
                .offset(x:-165)
                .fontWeight(.semibold)
            VStack(alignment: .leading, spacing: 25)
            {
                HStack(spacing: 15)
                {
                    Button(action: {})
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                            )
                            .offset(x:-9,y:23)
                            .frame(width: 70, height: 40)
                            .overlay(
                                Text("S")
                                    .offset(x:-9,y: 23)
                                    .foregroundColor(Color.black)
                            )
                    }
                    Button(action: {})
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                            )
                            .offset(x:-9,y:23)
                            .frame(width: 70, height: 40)
                            .overlay(
                                Text("M")
                                    .offset(x:-9,y: 23)
                                    .foregroundColor(Color.black)
                            )
                    }
                    Button(action: {})
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                            )
                            .offset(x:-9,y:23)
                            .frame(width: 70, height: 40)
                            .overlay(
                                Text("L")
                                    .offset(x:-9,y: 23)
                                    .foregroundColor(Color.black)
                            )
                    }
                    Button(action: {})
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                            )
                            .offset(x:-9,y:23)
                            .frame(width: 70, height: 40)
                            .overlay(
                                Text("XL")
                                    .offset(x:-9,y: 23)
                                    .foregroundColor(Color.black)
                            )
                    }
                    
                }
                HStack(spacing: 15)
                {
                    Button(action: {})
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                            )
                            .offset(x:-9,y:23)
                            .frame(width: 70, height: 40)
                            .overlay(
                                Text("XXL")
                                    .offset(x:-9,y: 23)
                                    .foregroundColor(Color.black)
                            )
                    }
                    Button(action: {})
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                            )
                            .offset(x:-9,y:23)
                            .frame(width: 70, height: 40)
                            .overlay(
                                Text("3XL")
                                    .offset(x:-9,y: 23)
                                    .foregroundColor(Color.black)
                            )
                    }
                    Button(action: {})
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                            )
                            .offset(x:-9,y:23)
                            .frame(width: 70, height: 40)
                            .overlay(
                                Text("4XL")
                                    .offset(x:-9,y: 23)
                                    .foregroundColor(Color.black)
                            )
                    }
                    
                }
                
            }
        }
    }
}

struct ProductDetails:View
{
    var body: some View
    {
        if #available(iOS 16.0, *) {
            Text("Product Details")
                .offset(x:-120)
                .fontWeight(.semibold)
            VStack()
            {
                HStack
                {
                    Text("Color")
                        .padding([.leading,.top],10)
                    Spacer()
                     Text("Dark green")
                        .fontWeight(.heavy)
                        .padding([.trailing,.top],10)
                }
              
                HStack
                {
                    Text("fabric")
                        .padding([.leading,.top],10)
                    Spacer()
                     Text("Denim")
                        .fontWeight(.heavy)
                        .padding([.trailing,.top],10)
                }
             
                HStack
                {
                    Text("Pattern")
                        .padding([.leading,.top],10)
                    Spacer()
                     Text("Solid")
                        .fontWeight(.heavy)
                        .padding([.trailing,.top],10)
                }
              
                HStack
                {
                    Text("Type")
                        .padding([.leading,.top],10)
                    Spacer()
                     Text("Denim Jackets")
                        .fontWeight(.heavy)
                        .padding([.trailing,.top],10)
                }
               
            }
        }
    }
}

struct AllDetails:View
{
    let indx:String
    var body: some View
    {
        HStack{
            
            Button(action: {})
            {
                NavigationLink(destination: ProductdetailsView(receiveIndx: indx))
                {
                    Text("All Details")
                        .foregroundColor(Color.black)
                        .fontWeight(.medium)
                    Spacer()
                    Image("next_arrow")
                        .offset(x:-8,y:3)
                        .foregroundColor(.black)
                }
              
            }
            .padding(.leading,10)
        }
    }
}
