//
//  ScrollLeftRightView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 31/08/22.
//

import SwiftUI
import SSSwiftUIGIFView

struct ScrollLeftRightView: View {
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .gray
        UIPageControl.appearance().pageIndicatorTintColor = .red
    }
    
    var body: some View {
        VStack{
            TabView{
                SeemlessView()
                CompetitiveView()
                WiderAvailabilityView()
                EasyAndSecureView()
                SafeReliableView()
            }
            //.tabViewStyle(.page(indexDisplayMode: .never))
            .tabViewStyle(.page)
            
            .padding(.bottom,20)
           
            NavigationLink(destination: LoginView())
            {
                Text("SKIP")
                    .font(.custom("NeoSansStd-Bold", size: 20))
                    .foregroundColor(Color.gray)
                    .padding(.bottom , 10)
            }

        }
    }
}
struct ScrollLeftRightView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollLeftRightView()
    }
}
struct pagecontroll:View
{
    var body: some View
    {
        HStack{
            Image("red_circle_sel")
            Image("red_circle_unsel")
            Image("red_circle_unsel")
            Image("red_circle_unsel")
            Image("red_circle_unsel")
        }
        .padding(.top,2)
    }
}
