//
//  DiwanView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/11/22.
//

import SwiftUI

struct DiwanView: View {
    var diwanArr = ["di1","di3","di4","di5","di6"]
    var body: some View {
        ScrollView
        {
            VStack(spacing: 20)
            {
                ForEach(0..<diwanArr.count)
                {
                    index in
                    Image(diwanArr[index])
                        .resizable()
                }
            }
        }
    }
}

struct DiwanView_Previews: PreviewProvider {
    static var previews: some View {
        DiwanView()
    }
}
