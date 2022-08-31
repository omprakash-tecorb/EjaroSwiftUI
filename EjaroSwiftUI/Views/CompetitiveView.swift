//
//  CompetitiveView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI
import SSSwiftUIGIFView


struct CompetitiveView: View {
    var body: some View {
      // ScrollView(.vertical, showsIndicators: false){
        VStack{
            Text("COMPETITIVE \n       PRICE")
                .font(.custom("NeoSansStd-Bold", size: 28))
                .fontWeight(.bold)
                .padding()
// MARK: - GIF
            
            SwiftUIGIFPlayerView(gifName: "22")
// MARK: - image Inside Circle
            //                Image("2")
            //                    .frame(width: 300, height: 200)
            //                    .clipShape(Circle())
            //                    .shadow(radius: 10)
            //                    .overlay(Circle().stroke(Color.black, lineWidth: 3))
            
            
            Text("Our prices are up to 30% cheaper \n        than a rental company")
                .font(.custom("NeoSansStd-Regular", size: 13))
                .padding()
            HStack{
                Image("red_circle_sel")
                Image("red_circle_sel")
                Image("red_circle_unsel")
                Image("red_circle_unsel")
                Image("red_circle_unsel")
            }
            .padding(.top,200)
            .padding()
            NavigationLink(destination: WiderAvailabilityView())
            {
                Text("SKIP")
                    .font(.custom("NeoSansStd-Bold", size: 20))
                    .foregroundColor(Color.gray)
                    .padding(.bottom,1)
            }
        }
        
        // }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
    }
}

struct CompetitiveView_Previews: PreviewProvider {
    static var previews: some View {
        CompetitiveView()
    }
}
