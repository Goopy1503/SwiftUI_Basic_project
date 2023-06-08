//
//  Button.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct ButtonClick: View {
    
    //property
    var BGColor: Color   // Color 타입 = 초기값 그린
    var myTitle: String
    var Count: Int
    
    
    var body: some View {
        
        Circle()
            .fill(Color.white)
            .frame(width: 75, height: 75)
            .shadow(color: Color.blue.opacity(1.0), radius: 5, y: 5)
            .overlay(
                Button{
                    //action
                    self.BGColor = Color.blue
                    self.myTitle = "+ 버튼 눌림"
                    self.Count += 1 // + 1 추가됨
                } label: {
                    Text("+")
                        .font(.largeTitle)
                }
            )
        
        
    }
    
    
} 

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonClick( BGColor:Color.green ,myTitle:"아직 버튼 안눌림" ,Count:0)
    }
}
