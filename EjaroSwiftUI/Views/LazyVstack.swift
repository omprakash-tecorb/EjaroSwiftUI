//
//  LazyVstack.swift
//  EjaroSwiftUI
//
//  Created by Apple on 15/10/22.
//

import SwiftUI

struct LazyVstack: View {
    var body: some View {
        ScrollView {
//           VStack(spacing: 16)
//            {
                ForEach(0 ..< 100) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(height: 100)
                        .shadow(radius: 100)
                }
//            }
//            .padding()
        }
    }
}

struct LazyVstack_Previews: PreviewProvider {
    static var previews: some View {
        LazyVstack()
    }
}
