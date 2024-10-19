//
//  LandMark.swift
//  LandMarks
//
//  Created by Dillon Dhayanandan on 30/09/2023.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark : Hashable, Codable {
    var Id : Int
    var name : String
    var park :String
    var state : String
    var description : String
    private var imageName: String
    var image : Image {
        Image(imageName)
    }
    private var coordinates: Coordinates
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    struct Coordinates : Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
