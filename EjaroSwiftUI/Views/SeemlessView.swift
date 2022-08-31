//
//  SeemlessView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/08/22.
//

import SwiftUI
import SSSwiftUIGIFView

struct SeemlessView: View {
    var body: some View {
      
        VStack{
            Text("A SEEMLESS \nEXPERIENCE")
                .font(.custom("NeoSansStd-Bold", size: 28))
                .padding(.top,0)
                .padding()
            SwiftUIGIFPlayerView(gifName: "11")
            Text("Locate & book the nearest vehicle to you \n         from the ease of your phone")
                .font(.custom("NeoSansStd-Regular", size: 13))
               
            HStack{
                Image("red_circle_sel")
                Image("red_circle_unsel")
                Image("red_circle_unsel")
                Image("red_circle_unsel")
                Image("red_circle_unsel")
            }
            .padding(.top,200)
            .padding()
            // .frame(width: 5, height: 5, alignment: .center)
            NavigationLink(destination: CompetitiveView())
            {
                Text("SKIP")
                    .font(.custom("NeoSansStd-Bold", size: 20))
                    .foregroundColor(Color.gray)
                    .padding(.bottom , 1)
            }
    }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .padding()
        //edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
    }
}

struct SeemlessView_Previews: PreviewProvider {
    static var previews: some View {
        SeemlessView()
    }
}
