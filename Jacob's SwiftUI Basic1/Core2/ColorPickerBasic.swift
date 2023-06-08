//
//  ColorPickerBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/13.
//

import SwiftUI

struct ColorPickerBasic: View {
    
    //property
    @State var BGColor: Color = Color.green
    
    var body: some View {
        ZStack{
            
            BGColor.opacity(0.5)
                .ignoresSafeArea()
            
            VStack{
                
                Rectangle()
                    .overlay(
                        Image(systemName: "flag.checkered.2.crossed")
                            .foregroundColor(BGColor)
                            .font(.largeTitle)
                    )
                    .foregroundColor(.white)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(15)
                    .shadow(color:BGColor, radius: 10, y: 10)
                    .padding()
                
                ColorPicker(selection: $BGColor, supportsOpacity: true) {
                    Text("원하는 색을 고르세요.")
                    
                }//: ColorPicker
                .padding()
                .background(.white)
                .cornerRadius(10)
                .foregroundColor(.black)
                .font(.headline)
                .padding(50)
                .shadow(color:BGColor, radius: 10, y: 10)
                
            }//: VStack
            
        }//: ZStack
        
    }
}

struct ColorPickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBasic()
    }
}
