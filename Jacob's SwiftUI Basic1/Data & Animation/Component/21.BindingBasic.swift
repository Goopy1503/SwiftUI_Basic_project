//
//  BindingChild.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct _1BindingBasic: View {
    
    //preperty
    @State var BGColor: Color = Color.gray
    @State var name: String = "What do you want?"
    
    var body: some View {
        
        ZStack{
            //background
            BGColor.opacity(0.2)
                .ignoresSafeArea()
            
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 300, height: 500, alignment: .center)
                .cornerRadius(15)
                .shadow(color:BGColor, radius: 15, y: 10)
    
            
            //content
            VStack{
                Text(name)
                    .font(.title2)
                    
                
                
                //button
                // parameter로 @State의 값에 $ 붙여준다
                BindingChild(BGColor: $BGColor, name: $name)
                
            }
            
        }
        
        
        
    }
}

struct _1BindingBasic_Previews: PreviewProvider {
    static var previews: some View {
        _1BindingBasic()
    }
}
