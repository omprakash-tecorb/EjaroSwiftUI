//
//  ChairView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/11/22.
//

import SwiftUI

struct ChairView: View {
    var chairArr = ["chair1","chair2","chair3","chair4","chair5","chair6"]
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20)
            {
                ForEach(0..<chairArr.count){ index in
                    Image(chairArr[index])
                        .resizable()
                }
            }
        }
    }
}

struct ChairView_Previews: PreviewProvider {
    static var previews: some View {
        ChairView()
    }
}
