//
//  IOSDeviceViewModel.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/16.
//

import Foundation


class IOSDeviceViewModel: ObservableObject{
    
    //property
    @Published var IOSDeviceArray: [IOSDeviceModel] = []
    
    //init
    init() {
        getData()
    } // : 뷰모델 실행될때 마다 get Data 실행
    
    // func
    func getData() {
        
        //값 선언
        let iphone = IOSDeviceModel(name: "아이폰", price: 150)
        let iPad = IOSDeviceModel(name: "아이패드", price: 210)
        let iMac = IOSDeviceModel(name: "아이맥", price: 310)
        let appleWatch = IOSDeviceModel(name: "애플워치", price: 50)
        
        //값 넣기
        self.IOSDeviceArray.append(iphone)
        self.IOSDeviceArray.append(iPad)
        self.IOSDeviceArray.append(iMac)
        self.IOSDeviceArray.append(appleWatch)        
    }
    
    
}
