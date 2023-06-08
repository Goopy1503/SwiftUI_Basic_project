//
//  12.ScrollViewBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/08.
//

import SwiftUI

struct _2_ScrollViewBasic: View {
    var body: some View {
        
        // 1. 세로 스크롤뷰
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                    ForEach(0..<50) { 순서 in
                            Rectangle()
                            .fill(Color.indigo)
                            .frame(height: 150)
                            .overlay(Text("\(순서) 번").font(.title))
                    }
            }
        }
        
        // 2.가로 스크롤뷰
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(0..<51) { 순서 in
                        Rectangle()
                        .fill(Color.indigo)
                        .frame(width: 100, height: 150)
                        .overlay(Text("\(순서) 번").font(.title))
                }
            }
        }
        
        
        
        // 3.혼합
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack{
                
                ForEach(0..<51) {_ in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            
                            ForEach(0..<51) { 순서 in
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white)
                                    .frame(width: 170, height: 100)
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, y: 0)
                                    .padding(10)
                                    .overlay(Text("No. \(순서)").font(.title3))
                            }
                            
                            
                        }
                    }
                    
                }
                
                
            }
        }
        

        
        
        
        
        
        
    }
}






struct _2_ScrollViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        _2_ScrollViewBasic()
    }
}
