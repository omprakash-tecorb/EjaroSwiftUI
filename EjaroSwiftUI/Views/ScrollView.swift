//
//  ScrollView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 30/08/22.
//

import SwiftUI
import SSSwiftUIGIFView

struct ScrollView: View {
    var body: some View {
        TabView{
            SeemlessView()
            CompetitiveView()
            WiderAvailabilityView()
            EasyAndSecureView()
            SafeReliableView()
               }
        .tabViewStyle(.page(indexDisplayMode: .never))
//        HStack{
//            Image("red_circle_sel")
//            Image("red_circle_unsel")
//            Image("red_circle_unsel")
//            Image("red_circle_unsel")
//            Image("red_circle_unsel")
//        }
//        .padding(.top,200)
//        .padding()
//        // .frame(width: 5, height: 5, alignment: .center)
//        NavigationLink(destination: CompetitiveView())
//        {
//            Text("SKIP")
//                .font(.custom("NeoSansStd-Bold", size: 20))
//                .foregroundColor(Color.gray)
//                .padding(.bottom , 1)
//        }
        // .tabViewStyle(.page)
        //.indexViewStyle(.page(backgroundDisplayMode: .never))
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView()
    }
}
