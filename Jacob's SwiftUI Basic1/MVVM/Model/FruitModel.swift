//
//  FruitModel.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/15.
//

import Foundation


struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
