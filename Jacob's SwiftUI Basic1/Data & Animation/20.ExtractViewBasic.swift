//
//  20.ExtractViewBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct _0_ExtractViewBasic: View {
    //property
    @State var BGColor : Color = Color.pink
    
    // 바디
    var body: some View {
        ZStack{
            //background
            BGColor.ignoresSafeArea()
            //content
            ContentLayer
            
        }
    }//: 바디 끝
    
    
    
    // Content
    var ContentLayer : some View{
        
        VStack{
            Text("Extract View 연습")
                .font(.title2)
            
            Button {
                //action
                BGColor = .yellow
            } label: {
                Text("바탕색 변경")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }//: Content 끝
    
    
    // Function
    func buttonPressed(){
        BGColor = .yellow
    }
    
    
    
    
}





struct _0_ExtractViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        _0_ExtractViewBasic()
    }
}
