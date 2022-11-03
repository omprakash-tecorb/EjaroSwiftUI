//
//  BackButton.swift
//  SwiftUi Practice
//
//  Created by Apple on 24/08/22.
//

import Foundation
import SwiftUI


import Foundation
import SwiftUI

struct NavBackButton: View {
  
    let dismiss: DismissAction
    let text:String
    let image:String
    var body: some View {
        Button { dismiss()}
           label: {
            //Image("back_arrow_auth")
               Image("\(image)")
                Text("\(text)")
                .foregroundColor(Color.black)
        }
    }
}
