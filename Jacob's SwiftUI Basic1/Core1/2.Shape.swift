//
//  2.Shape.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/04.
//

import SwiftUI

struct __Shape: View {
    var body: some View {
        VStack {
            // 원형 == Circle
            Circle()
                .trim(from: 0.0, to: 0.5)
                .fill(Color.blue)
                .frame(width: 100, height: 100)
               
        
            // 타원형 == Ellipse
          
            Ellipse()
                .trim(from:0.5, to: 1.0)
                .fill(Color.pink)
                .frame(width: 200, height: 100, alignment: .leading)
            
        
            //캡슐형
            Capsule(style: .continuous)
                .stroke(Color.purple, lineWidth: 30)
                .frame(width: 300, height: 100,alignment: .center )
            
        }
        
        VStack (spacing: 10) {
            //직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            //둥근직사각형
            Text("둥근직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 50)
                .trim(from: 0.4, to: 1.0)
                .fill(Color.accentColor)
            
            
        }
    }
}

struct __Shape_Previews: PreviewProvider {
    static var previews: some View {
        __Shape()
    }
}
