//
//  UserData.swift
//  Bluetooth_Prob
//
//  Created by 浩然  万 on 2020/2/7.
//  Copyright © 2020 浩然  万. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var openTracking = false
    @Published var locationwithbluetooth = locationwithbluetoothData
}
