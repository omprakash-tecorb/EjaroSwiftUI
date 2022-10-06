//
//  MyCarsView.swift
//  EjaroSwiftUI
// @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

//  Created by Apple on 07/09/22.
//
import MapKit
import SwiftUI

struct MyCarsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        var body: some View {
      //  Text("My cars View")
        Map(coordinateRegion:$region)
    }
}

struct MyCarsView_Previews: PreviewProvider {
    static var previews: some View {
        MyCarsView()
    }
}
