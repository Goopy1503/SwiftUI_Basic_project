//
//  Color2.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/05/29.
//

import SwiftUI

import SwiftUI

struct Color2: View {
    
    var body: some View {
        ScrollView{
            VStack (spacing: 10){
                
                HStack(spacing: 30){
                    ColorSet(text: "primary", color:.primary)
                    ColorSet(text: "secondary", color:.secondary)
                }//】 HStack
                
                HStack(spacing: 30){
                    ColorSet(text: "red", color:.red)
                    ColorSet(text: "systemRed", uiColor: UIColor.systemRed)
                }//】 HStack
                
                HStack(spacing: 30){
                    ColorSet(text: "green", color:.green)
                    ColorSet(text: "systemGreen", uiColor: UIColor.systemGreen)
                }//】 HStack
                
                HStack(spacing: 30){
                    ColorSet(text: "blue", color:.blue)
                    ColorSet(text: "systemBlue", uiColor: UIColor.systemBlue)
                }//】 HStack
                
                HStack(spacing: 30){
                    ColorSet(text: "gray", color:.gray)
                    ColorSet(text: "systemGray", uiColor: UIColor.systemGray)
                }//】 HStack
                
                HStack(spacing: 30){
                    ColorSet(text: "gray", color:.gray)
                    ColorSet(text: "systemGray2", uiColor: UIColor.systemGray2)
                }//】 HStack
                
                HStack(spacing: 30){
                    ColorSet(text: "gray", color:.gray)
                    ColorSet(text: "systemGray2", uiColor: UIColor.systemGray2)
                }//】 HStack
                
                
                
                
            }//】 VStack
        }
    }//】 Body
}



struct Color2_Previews: PreviewProvider {
    static var previews: some View {
        Color2()
    }
}




struct ColorSet: View {
    
    //property
    var text : String
    var color : Color? = nil
    var uiColor : UIColor? = nil
    var customColor : String? = nil
    
    var body: some View {
        VStack(spacing:0){
                
            if (color != nil){
                Text(text)
                    .foregroundColor(color!)
                
            }else if (uiColor != nil){
                Text(text)
                    .foregroundColor(Color(uiColor!))
                
            }else if (customColor != nil){
                Text(customColor!)
                    .foregroundColor(Color(customColor!))
                
            } else {
                EmptyView()
            }// 조건문
                
                        
        }//】 VStack
        .font(.title2)
    }//】 Body
}
