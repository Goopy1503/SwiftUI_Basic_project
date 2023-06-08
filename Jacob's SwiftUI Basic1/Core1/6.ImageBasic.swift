//
//  ImageBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/07.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        
        
        
        VStack(spacing: 10){
            
            Image("구피")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(30)
            
            
            
            Divider() // 구분선
            
            
            
            
            Image("구피")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            // 클리핑 마스크 방식!
            
            
            
            
            
            
            
        }
    }
}






struct ImageBasic_Previews: PreviewProvider {
    static var previews: some View {
        ImageBasic()
    }
}
