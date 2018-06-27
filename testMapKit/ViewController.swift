//
//  ViewController.swift
//  testMapKit
//
//  Created by Nguyen Duc Tai on 5/8/18.
//  Copyright © 2018 Nguyen Duc Tai. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapKit: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapKit.setRegion(MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D.init(latitude: 10.7752722, longitude: 106.6881904), 1500, 1500), animated: true)
//        let pin = tai(title: "GumiViet", subtitle: "Cong ty IT", coordinate: CLLocationCoordinate2DMake(10.7752722, 106.6881904))
//        mapKit.addAnnotation(pin)
    }
    
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
//        if sender.state != UIGestureRecognizerState.began { return }
        let touchLocation = sender.location(in: mapKit)
        let locationCoordinate = mapKit.convert(touchLocation, toCoordinateFrom: mapKit)
        print("Tapped at lat: \(locationCoordinate.latitude) long: \(locationCoordinate.longitude)")
        
        let lat =  locationCoordinate.latitude
        
        let long = locationCoordinate.longitude
        
        let geoCoder = CLGeocoder()
        
        let location = CLLocation(latitude: lat, longitude: long)
        
        geoCoder.reverseGeocodeLocation(location) { (placemarks, error) in
            var placeMark: CLPlacemark!
            placeMark = placemarks?[0]
            
            if let locationName = placeMark.name {
                print(locationName)
                
                let pin = tai(title: locationName, subtitle: "", coordinate: CLLocationCoordinate2DMake(lat, long))
                
                self.mapKit.addAnnotation(pin)
            }
            //            if let locationName = placeMark.addressDictionary!["Name"] as? NSString {
            //                print(locationName)
            //            }
        }
        
        
        //        let pin = tai(title: placemark.title!, subtitle: "", coordinate: CLLocationCoordinate2DMake(locationCoordinate.latitude, locationCoordinate.longitude))
        //
        //        mapKit.addAnnotation(pin)
        
        //        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as! VC2ViewController
        //
        //        self.addChildViewController(vc)
        //        vc.view.frame       = self.view.frame
        //
        //        self.view.addSubview(vc.view)
        //        vc.didMove(toParentViewController: self)
    }
    
    @IBAction func revealRegionDetailsWithLongPressOnMap(sender: UILongPressGestureRecognizer) {
        
    }
    
    

}

