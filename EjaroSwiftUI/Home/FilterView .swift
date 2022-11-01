//
//  FilterView .swift
//  EjaroSwiftUI
//
//  Created by Apple on 01/11/22.
//

import SwiftUI

struct FilterView_: View {
    let names = ["Holly", "Josh", "Rhonda", "Ted","Ok","pk","Aak","fan","Chair","Table","Coofy","Diwan"]
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink(destination: Text(name)) {
                        Text(name)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Contacts")
        }
        
        
    }
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}

struct FilterView__Previews: PreviewProvider {
    static var previews: some View {
        FilterView_()
    }
}
