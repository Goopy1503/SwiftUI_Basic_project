//
//  7.FrameBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/07.
//

import SwiftUI

struct __FrameBasic: View {
    var body: some View {
        
        VStack(spacing: 10){
            
            
            Text("   I Slay !!!!!!  ")
                .font(.title)
                .frame(height: 50)
                .background(Color.teal)
            
                .background(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                )
                .padding(70)
            
            Divider() //구분점
            
            
            Text("   I Slay   ")
                .font(.title)
                .background(Color.teal)
            //
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
                    
            Divider() //구분점
            
            
            Text("   I Slay !!!!!!   ")
                .font(.title)
                .frame(height:50)
                .background(Color.teal)
            //
                .frame (height: 100, alignment: .top)
                .background(Color.purple)
            //
                .frame (maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
            
            
            
            
                    
                    
        }
    }
}







struct __FrameBasic_Previews: PreviewProvider {
    static var previews: some View {
        __FrameBasic()
    }
}
