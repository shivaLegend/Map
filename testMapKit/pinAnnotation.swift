//
//  pinAnnotation.swift
//  testMapKit
//
//  Created by Nguyen Duc Tai on 5/8/18.
//  Copyright © 2018 Nguyen Duc Tai. All rights reserved.
//

import Foundation
import MapKit
class tai: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String,subtitle:String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate 
    }
}
