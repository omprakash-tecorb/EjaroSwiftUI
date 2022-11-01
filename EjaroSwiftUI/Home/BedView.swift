//
//  BedView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/11/22.
//

import SwiftUI

struct BedView: View {
    var bedArr = [ "bed1","bed2","bed3","bed4","bed5","bed6"]
    var body: some View {
        ScrollView
        {
            VStack(spacing: 20)
            {
                ForEach(0..<bedArr.count){
                    index in
                    Image(bedArr[index])
                        .resizable()
                }
            }
        }
    }
}

struct BedView_Previews: PreviewProvider {
    static var previews: some View {
        BedView()
    }
}
