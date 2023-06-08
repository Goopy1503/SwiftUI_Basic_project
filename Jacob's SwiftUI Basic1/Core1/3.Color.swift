//
//  3.Color.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/06.
//

import SwiftUI

struct __Color: View {
    
    var body: some View {
        VStack (spacing: 10){
            
            
            ColorBox(text: "accentColor", color:.accentColor)
            ColorBox(text: "primary", color:.primary)
            ColorBox(text: "secondary", color:.secondary)
            // UIColor - UIkit에서 사용되는 color 값을 사용할 수 있다.
            ColorBox(text: "UIColor.secondarySystemBackground",
                     uiColor: UIColor.secondarySystemBackground)
            ColorBox(text: "UIColor.opaqueSeparator",
                     uiColor: UIColor.opaqueSeparator)
            ColorBox(text: "CustomColor", customColor: "CustomColor")
            
            
        }//】 VStack
    }//】 Body
}



struct __Color_Previews: PreviewProvider {
    static var previews: some View {
        __Color()
    }
}




struct ColorBox: View {
    
    //property
    var text : String
    var color : Color? = nil
    var uiColor : UIColor? = nil
    var customColor : String? = nil
    
    var body: some View {
        VStack(spacing: 0){
            Text (text)
                .font(.title3)
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 300, height: 70)
                .overlay{
                    if (color != nil){
                        color!
                    }else if (uiColor != nil){
                        Color(uiColor!)
                    }else if (customColor != nil){
                        Color(customColor!)
                    } else {
                        EmptyView()
                    }// 조건문
                }
                .cornerRadius(15)
                        
        }//】 VStack
        .padding(.bottom, 10)
    }//】 Body
}
