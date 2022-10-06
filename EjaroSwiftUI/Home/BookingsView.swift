//
//  BookingsView.swift
//  EjaroSwiftUI
//
//  Created by Apple on 07/09/22.
//

import SwiftUI

struct BookingsView: View {
   // @EnvironmentObject  var network:Getdata
   var body: some View {
//        ScrollView {
//            ForEach(network.users) { user in
          //Text(user.username)
       Text("jn,")
//              }
//
//            }
//        .onAppear {
//                network.getdataFunc()
//        }
  }
}

struct BookingsView_Previews: PreviewProvider {
    static var previews: some View {
        BookingsView()
          //  .environmentObject(Getdata())
    }
}

class Getdata : ObservableObject{
    @Published var users : [user] = []
    func getdataFunc()
    {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        else {
            fatalError("Missing url")
        }
        var urlrequest = URLRequest(url: url)
        
       // urlrequest.httpMethod = "POST"
       //  urlrequest.addValue("application/json", forHTTPHeaderField: "Accept")
       // var params = [String:Any]()
       // params.updateValue("Username", forKey: "username")
       // params.updateValue("Password", forKey: "password")
        //urlrequest.httpBody = try! JSONSerialization.data(withJSONObject: params, options: [])
        
        let dataTask = URLSession.shared.dataTask(with: urlrequest) {(data,response,error) in
       
            if error == nil
            {
                if let data = data {
                    do{
                        let userResponse = try JSONDecoder().decode([user].self,from: data)
                        print(userResponse)
                        self.users.append(contentsOf: userResponse)
                    }
                    catch var error {
                        print(error.localizedDescription)
                    }
                }
               
                                 
            }
            else{
                print(error?.localizedDescription)
            }
           
        }
        dataTask.resume()
      }
    }
    
            

