//
//  ItemBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct ItemBasic: View {
    
    //property
    let title : String
    let price : Int
    let BGColor : Color
    
    var body: some View {
        
        VStack(spacing:10){
            Text(title)
                .font(.title)
            
            Text("\(price)원")
                .font(.title2)
                .foregroundColor(BGColor)
        }
        //VStack 설정값
        .frame(width: 100, height: 100)
        .background(.white)
        .cornerRadius(15)
        .shadow(color: BGColor, radius: 7, x: 0, y: 10)
        .padding(10)
        
    }
}

struct ItemBasic_Previews: PreviewProvider {
    static var previews: some View {
        ItemBasic(title: "배", price: 1000, BGColor: .orange)
    }
}
