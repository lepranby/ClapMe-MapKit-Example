//
//  MapView.swift
//  ClapMe
//
//  Created by Aleksej Shapran on 29.03.23.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 52.519422, longitude: 13.388913),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: 52.519422, longitude: 13.388913), tint: .blue))]

    var body: some View {
            Map(coordinateRegion: $region, showsUserLocation: true,
              annotationItems: markers) { marker in
                marker.location
            }.edgesIgnoringSafeArea(.all)
        }
}

struct MapView_Previews: PreviewProvider {
    
    static var previews: some View {
        MapView()
    }
}

