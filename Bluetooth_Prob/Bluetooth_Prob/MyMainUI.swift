//
//  MyMainUI.swift
//  Bluetooth_Prob
//
//  Created by 浩然  万 on 2020/2/7.
//  Copyright © 2020 浩然  万. All rights reserved.
//

import SwiftUI

var SavedData: Array<LocationWithBuletooth> = []

struct MyMainUI: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack{
            Button(action: {
                self.userData.openTracking.toggle()
            }){
                HStack{
                    Text("Let's rock!")
                    Spacer()
                    if self.userData.openTracking{
                        Image(systemName: "circle.fill")
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "circle.fill")
                        .foregroundColor(.gray)
                    }
                }
                .padding()
            }
            
            MapView(coordinate: userData.locationwithbluetooth.locationCoordinate)
           
        }
    }
}

struct MyMainUI_Previews: PreviewProvider {
    static var previews: some View {
        MyMainUI()
            .environmentObject(UserData())
    }
}
