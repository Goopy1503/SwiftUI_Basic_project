//
//  4.Gradient.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/07.
//

import SwiftUI

struct __Gradient: View {
    var body: some View {
        VStack(spacing: 10){
            
            
            //선형 그라디언트
            Text("Linear Gradient")
                .font(.title3)
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.green, Color.red]),
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 150)
            
            
            //원형 그라디언트
            Text("Radial Gradient")
                .font(.title3)
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow,Color.purple]),
                        center: .top,
                        startRadius: 5,
                        endRadius: 200)
                )
                .frame(width: 300, height: 150)
            
            
            
            //앵귤러 그라디언트
            Text("Angular Gradient")
                .font(.title3)
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.orange]),
                        center: .center,
                        angle: .degrees(0))
                )
                .frame(width: 300, height: 150)
            
            
            
        }
}
}

struct __Gradient_Previews: PreviewProvider {
    static var previews: some View {
        __Gradient()
    }
}
