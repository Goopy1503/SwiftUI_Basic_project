//
//  IOSDeviceModel.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/16.
//

import Foundation


struct IOSDeviceModel : Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let price: Int
}
