//
//  CircleButton.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/05/12.
//

import SwiftUI

struct CircleButton: View {
    
    //property
    let buttonColor : Color
    let buttonText : String
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100, height: 100)
            Text(buttonText)
                .foregroundColor(.white)
            
        }
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(buttonColor: .green, buttonText: "Button")
    }
}
