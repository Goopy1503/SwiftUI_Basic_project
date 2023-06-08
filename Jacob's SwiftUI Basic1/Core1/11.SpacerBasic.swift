//
//  11.SpacerBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/08.
//

import SwiftUI

struct _1_SpacerBasic: View {
    var body: some View {
        
        VStack{
            
                // 1. 상단 아이콘
                HStack{
                    
                    Image(systemName: "xmark")
                    
                    Spacer()
                    
                    Image(systemName: "gear")
                    
                    
                }
                .font(.title)
                .padding(.horizontal, 10)

            
            
                // 공간 분리
                Spacer()
            
            
            
            
            
                // 2. Spacer 예시 도형
                HStack (spacing: 0){
                    
                        Spacer(minLength: 0)
                            .frame(height: 10)
                            .background(Color.purple)
                        
                        Rectangle()
                            .frame(width: 50, height: 50)
                        
                        Spacer()
                            .frame(height: 10)
                            .background(Color.purple)
                        
                        Rectangle()
                            .fill(Color.teal)
                            .frame(width: 50, height: 50)
                        
                        Spacer()
                            .frame(height: 10)
                            .background(Color.purple)
                        
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 50, height: 50)
                        
                        Spacer()
                            .frame(height: 10)
                            .background(Color.purple)
                    
                    
                }
                .background(Color.yellow)
            
            
        }
        
        
        
    }
}






struct _1_SpacerBasic_Previews: PreviewProvider {
    static var previews: some View {
        _1_SpacerBasic()
    }
}
