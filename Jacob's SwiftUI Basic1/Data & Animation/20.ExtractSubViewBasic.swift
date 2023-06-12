//
//  20.ExtractSubViewBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        
        ZStack{
            //background
            Color.white
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
    
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ForEach(0..<20){ _ in
                    ItemBasic(title: "사과", price: 1200, BGColor:.red )
                    ItemBasic(title: "오렌지", price: 900, BGColor:.orange )
                    ItemBasic(title: "바나나", price: 700, BGColor:.yellow )
                }
                
            }
        }
            
        
    }
    
    
    
    
    
    
}




struct ExtractSubViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewBasic()
    }
}
