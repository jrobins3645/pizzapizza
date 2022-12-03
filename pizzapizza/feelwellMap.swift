//
//  feelwellMap.swift
//  gcApp
//
//  Created by Allison Kohler on 11/21/22.
//

import SwiftUI
import MapKit
import CoreLocation


struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct feelwellMaps: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 42.336790, longitude:-83.050023),
        span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
    )
    
    let annotations = [
        Location(name: "Grand Circus", coordinate: CLLocationCoordinate2D(latitude: 42.335960, longitude: -83.049750)),
        Location(name: "Lafayette Park", coordinate: CLLocationCoordinate2D(latitude: 42.339440, longitude: -83.038260)),
        Location(name: "Detroit Public Library - Main", coordinate: CLLocationCoordinate2D(latitude: 42.358580, longitude: -83.066720)),
    ]
    
    //    @State private var mapSearch: String = ""
    
    @State private var showRecs = false
    
    var body: some View {
        VStack {
            
            mapSearch()
            
            Button("recommend something to me") {
                showRecs.toggle()
            }
            .foregroundColor(.white)

            .font(.system(size: 22, weight: .semibold))
            .multilineTextAlignment(.center)
            .frame(width: 450.0, height: 40.0)
            .background(
                Image("background2")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/500.0/*@END_MENU_TOKEN@*/, height: 55.0)
            )
            .position(x: 203, y: -94.5)
            
            
            Map(coordinateRegion: $region,
                annotationItems: annotations)
            {
                MapMarker(coordinate: $0.coordinate)
            }
            .edgesIgnoringSafeArea(.all)
            .frame(width: 400, height: 500.0)
            .position(x: 200, y: -66)
            
        }
        
    }
    
    
    struct feelwellMaps_Previews: PreviewProvider {
        static var previews: some View {
            feelwellMaps()
        }
    }
}
