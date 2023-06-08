//
//  CircleButton.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/05/12.
//

import SwiftUI

struct CircleButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 100, height: 100)
            Text("Button")
                .foregroundColor(.white)
            
        }
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton()
    }
}
