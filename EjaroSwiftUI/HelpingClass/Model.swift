//
//  Model.swift
//  EjaroSwiftUI
//
//  Created by Apple on 29/09/22.
//

import Foundation
struct user: Decodable ,Identifiable {

    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address
    var phone: String
    var website: String
    var company: Company

}

struct Address: Decodable {

    var street: String
    var suite: String
    var city: String
    var zipcode: String
    //var geo: Geo

}

struct Company: Decodable {

    var name: String
    var catchPhrase: String
    var bs: String

}

struct iosDevice: Decodable,Identifiable
{
    var id: Int
    var modelName: String
    var code: String
//    init(data: [String: AnyObject]){
//        self.modelName = data["modelName"] as! String
//        self.code = data["code"] as! String
//    }
    
}
