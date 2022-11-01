//
//  TableView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/11/22.
//

import SwiftUI

struct TableView: View {
    var tabArr = ["tab1","tab2","tab3","tab4","tab5","tab6"]
    var body: some View {
       ScrollView
        {
            VStack(spacing: 20)
            {
                ForEach(0..<tabArr.count){ index in
                    Image(tabArr[index])
                        .resizable()
                }
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
