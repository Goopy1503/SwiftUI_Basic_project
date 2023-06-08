//
//  21BindingBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct BindingChild: View {
    
    //property
    @State var buttonColor: Color = Color.blue
    @Binding var BGColor : Color
    @Binding var name: String
    
    
    var body: some View {
        
       
        Button {
            //action
            BGColor = Color.red
            buttonColor = Color.pink
            name = "🍎"
        } label: {
            Text("Another")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

struct BindingChild_Previews: PreviewProvider {
    static var previews: some View {
        
        BindingChild( BGColor: .constant(Color.orange),
                      name: .constant("Binding Child") )
        .previewLayout(.sizeThatFits)
    }
}
