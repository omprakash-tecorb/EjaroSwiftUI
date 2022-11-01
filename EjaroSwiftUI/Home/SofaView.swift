//
//  SofaView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/11/22.
//

import SwiftUI

struct SofaView: View {
    var sofaArr = [ "sofa1","sofa2","sofa3","sofa4","sofa5","sofa6"]
    var body: some View {
        ScrollView{
            VStack(spacing: 20)
            {
                ForEach(0..<sofaArr.count){ index in
                    Image(sofaArr[index])
                        .resizable()
                }
              
            }
        }
    }
}

struct SofaView_Previews: PreviewProvider {
    static var previews: some View {
        SofaView()
    }
}
