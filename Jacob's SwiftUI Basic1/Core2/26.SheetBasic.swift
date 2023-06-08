//
//  26.SheetBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/10.
//

import SwiftUI

// .sheet : 앱의 기본적인 화면 효과 (팝업창)
//        : 현재 View에서 약 90% 부분 정도 overlay 되는 View
// .fullScreenCover : 현재 View에서 전체 부분 overlay 되는 view

struct _6_SheetBasic: View {
    
    //property
    @State var condition : Bool = false
    
    var body: some View {
        
        ZStack{
            //Background
            Color.mint.opacity(0.3).ignoresSafeArea()
         
            
            // Content
            Button {
                condition.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.mint)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            
            // [1]. Sheet
            // bool 값으로 스위치, 넘겨주는 값은 '$' Binding 표시 해줘야함!
            // "sheet은 condition에 따라 나타날꺼다"
            .sheet(isPresented: $condition){
                _6_SheetBasic2()
            }
            
            // [2]. fullScreenCover
//            .fullScreenCover(isPresented: $condition) {
//                _6_SheetBasic2()
//              }
            
        
        }
    }
}

struct _6_SheetBasic_Previews: PreviewProvider {
    static var previews: some View {
        _6_SheetBasic()
    }
}
