//
//  9. StackBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/07.
//

import SwiftUI

struct ___StackBasic: View {
    var body: some View {
        
        
        //VStack
        VStack(alignment: .center,spacing: 20) {
            
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
            
            
            
            
            // HStack
            HStack(spacing: 10){
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 300)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 200)
                
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }
            
            
        }
        
        
        //ZStack
        HStack(spacing: 20){
            
        
            ZStack(alignment: .center){
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 300)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 200)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }
            
            
            ZStack(alignment: .center){
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 300)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 200)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
            }
            
            
            
            ZStack(alignment: .center){
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 300)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 200)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            
        
        }
        // ZStack    vs   Background
        // 복잡한 레이어 vs 단순한 레이어
        // 웬만하면 ZStack을 쓰자 !
        
        
        
     
        
        
        
        
    }
}






struct ___StackBasic_Previews: PreviewProvider {
    static var previews: some View {
        ___StackBasic()
    }
}
