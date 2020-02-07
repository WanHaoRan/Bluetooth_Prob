//
//  UpdateCurrentLocation.swift
//  Bluetooth_Prob
//
//  Created by 浩然  万 on 2020/2/7.
//  Copyright © 2020 浩然  万. All rights reserved.
//

import UIKit
import CoreLocation

class UpdateCurrentLocation: UIViewController{
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getCurrentLocation()
    }
    
    func getCurrentLocation() {
        self.locationManager.requestAlwaysAuthorization()
        
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
}

extension UpdateCurrentLocation: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else {
            return
        }
        print ("location = \(locValue.latitude) \(locValue.longitude)")
    }
}
