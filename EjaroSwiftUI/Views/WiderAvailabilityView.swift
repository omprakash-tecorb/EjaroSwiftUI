//
//  WiderAvailabilityView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI
import SSSwiftUIGIFView

struct WiderAvailabilityView: View {
    var body: some View {
// MARK: - ScrollView
          //ScrollView(.vertical, showsIndicators: false){
        VStack{
            Text("WIDER AVAILIBILITY\n    &MORE PRICE")
                .font(.custom("NeoSansStd-Bold", size: 28))
                .padding(.top,0)
                .padding()
// MARK: - GIF
            SwiftUIGIFPlayerView(gifName: "33")
            
// MARK: - image Inside Circle
            //                  Image("3")
            //                    .frame(width: 300,                           height: 200)
            //                    .clipShape(Circle())
            //                    .shadow(radius: 10)
            //                    .overlay(Circle().stroke(Color.black,                    lineWidth: 3))
            
            
            Text("A greater selection of cars from \n          economic to luxury")
                .font(.custom("NeoSansStd-Regular", size: 13))
                .padding()
            HStack{
                Image("red_circle_sel")
                Image("red_circle_sel")
                Image("red_circle_sel")
                Image("red_circle_unsel")
                Image("red_circle_unsel")
            }
            .padding(.top,200)
            .padding()
            NavigationLink(destination: EasyAndSecureView())
            {
                Text("SKIP")
                    .font(.custom("NeoSansStd-Bold", size: 20))
                    .foregroundColor(Color.gray)
            }
         // }
         }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
    }
}

struct WiderAvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        WiderAvailabilityView()
    }
}
