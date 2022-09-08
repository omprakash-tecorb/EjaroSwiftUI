//
//  EasyAndSecureView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI
import SSSwiftUIGIFView

struct EasyAndSecureView: View {
    
    var body: some View {
        //ScrollView(.vertical, showsIndicators: false){
        VStack{
            Text("EASY & SECURE \n      PAYMENTS")
                .font(.custom("NeoSansStd-Bold", size: 28))
                .padding(.top,0)
                .padding()
// MARK: - GIF
            SwiftUIGIFPlayerView(gifName: "44")
                .frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
// MARK: - image Inside Circle
            //                Image("km")
            //                    .scaledToFill()
            //                    .frame(width: 300, height: 200)
            //                    .clipShape(Circle())
            //                    .shadow(radius: 10)
            //                    .overlay(Circle().stroke(Color.black, lineWidth: 3))
            //
            
            Text(" No more waiting in long lines, skip the\ncounter with no paperwork and pay easily")
                .font(.custom("NeoSansStd-Regular", size: 13))
                .padding()
//            HStack{
//                Image("red_circle_sel")
//                Image("red_circle_sel")
//                Image("red_circle_sel")
//                Image("red_circle_sel")
//                Image("red_circle_unsel")
//            }
//            .padding(.top,200)
//            .padding()
//            NavigationLink(destination: SafeReliableView())
//            {
//                Text("SKIP")
//                    .font(.custom("NeoSansStd-Bold", size: 20))
//                    .foregroundColor(Color.gray)
//            }
            
        }
        
        //  }
       // .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct EasyAndSecureView_Previews: PreviewProvider {
    static var previews: some View {
        EasyAndSecureView()
    }
}
