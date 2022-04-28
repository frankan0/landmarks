//
//  MapView.swift
//  landmarks
//
//  Created by frank0 on 2022/4/27.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var cooradinate : CLLocationCoordinate2D
    
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(cooradinate)
            }
    }
    
    private func setRegion(_ coordinate:CLLocationCoordinate2D){
        region =  MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(cooradinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
