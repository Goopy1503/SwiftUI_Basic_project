//
//  22.ConditionalBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct _2_ConditionalBasic: View {
    
    //property
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = true
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
        
        //로딩 버튼
            Button {
                isLoading.toggle()
            } label: {
                Text("로드중... \(isLoading.description)")
                   
            }

            
            
            // 조건 삽입
            if isLoading {
                ProgressView()
            }
            
            
            
            // 버튼
            Button {
                showCircle.toggle()
                showRectangle.toggle()
            } label: {
                
                VStack{
                    Text("원형 버튼 : \(showCircle.description)")
                        .padding()
                    Text("사각형 버튼 : \(showRectangle.description)")
                    
                    if showCircle {
                        Circle()
                            .frame(width: 100, height: 100)
                        
                    }else{
                        Rectangle()
                            .frame(width: 100, height: 100)
                    }}
                   
            }.padding(100)
            
            
            
            
            
            
            
            
            
            
            Spacer()
            
        }
     
    }//: 바디
}

struct _2_ConditionalBasic_Previews: PreviewProvider {
    static var previews: some View {
        _2_ConditionalBasic()
    }
}
