//
//  SwiftUIView.swift
//  Bluetooth_Prob
//
//  Created by 浩然  万 on 2020/2/7.
//  Copyright © 2020 浩然  万. All rights reserved.
//

import SwiftUI
import CoreLocation

struct LocationWithBuletooth: Identifiable{
    var id: Int
    fileprivate var coordinate: Coordinate
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinate.latitude,
            longitude: coordinate.longitude)
    }
    var BluetoothList: Array<Any>
}


struct Coordinate: Hashable, Codable{
    var latitude: Double
    var longitude: Double
}

let locationwithbluetoothData = LocationWithBuletooth(id:0,coordinate:Coordinate(latitude: 39.9, longitude: 116.3),BluetoothList:[])
