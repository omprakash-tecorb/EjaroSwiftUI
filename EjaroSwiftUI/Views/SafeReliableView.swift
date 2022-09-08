//
//  SafeReliableView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI
import SSSwiftUIGIFView

struct SafeReliableView: View {
    var body: some View {
       // ScrollView(.vertical, showsIndicators: false){
            VStack{
                Text("SAFE, RELAIBLE\n    & INSURED")
                    .font(.custom("NeoSansStd-Bold", size: 28))
                    .padding(.top,0)
                    .padding()
    // MARK: - GIF
                SwiftUIGIFPlayerView(gifName: "55")
                    .frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
    // MARK: - image Inside Circle
                //                Image("host_unsel")
                //                    .scaledToFill()
                //                    .frame(width: 300, height: 200)
                //                    .clipShape(Circle())
                //                    .shadow(radius: 10)
                //                    .overlay(Circle().stroke(Color.black, lineWidth: 3))
                
                
                Text(" No more waiting in long lines,skip the counter\n with no paperwork and pay easily")
                    .font(.custom("NeoSansStd-Regular", size: 13))
                    .padding()
//                HStack{
//                    Image("red_circle_sel")
//                    Image("red_circle_sel")
//                    Image("red_circle_sel")
//                    Image("red_circle_sel")
//                    Image("red_circle_sel")
//                }
//                .padding(.top,200)
//                .padding()
                NavigationLink(destination: LoginView())
                {
                    Text("START")
                        .bold()
                        .foregroundColor(Color.white)
                        .padding([.leading,.trailing], 150)
                        .frame( minHeight: 45)
                        .background(Color(hex: 0xb2020f))
                        .cornerRadius(10)
                }
                .padding(.top,200)
                
            }
            
       // }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
        
        
    }
}

struct SafeReliableView_Previews: PreviewProvider {
    static var previews: some View {
        SafeReliableView()
    }
}
