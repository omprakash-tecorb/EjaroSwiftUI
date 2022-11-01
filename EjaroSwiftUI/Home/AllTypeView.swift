//
//  AllTypeView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 31/10/22.
//

import SwiftUI

struct AllTypeView: View {
    var arrayimage = ["All1","All2","All3","All4"]
    var body: some View {
        ScrollView{
            VStack{
                NavigationLink(destination: FilterView_())
                {
                Text("Filter the Name")
                        .padding(.bottom,20)
               }
                ForEach(0..<arrayimage.count){ index in
                    Image(arrayimage[index])
                        .resizable()
                }
            }
        }
        
        
    }
}

struct AllTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AllTypeView()
    }
}
