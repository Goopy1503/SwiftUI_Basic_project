//
//  23.TernaryOperatorsBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI
// 삼항 연산자 -> Bool + if조건문을 간결하게 표현 가능!

struct _3_TernaryOperatorsBasic: View {
    
    //property
    @State var isStaringState: Bool = false
    
    var body: some View {
        VStack{
            // 1)
            VStack{
                
                // 1.if else 조건문
                Button {
                    isStaringState.toggle()
                } label: {
                    Text("if else 버튼 : \(isStaringState.description)")
                }
                
                if isStaringState{
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.red)
                        .frame(width: 200, height: 100)
                }else {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.blue)
                        .frame(width: 200, height: 100)
                }
                
                
                
            }.padding(.vertical, 50)
            
            
            // 2)
            VStack{
                
                // 2.  삼항 연산자
                Button {
                    isStaringState.toggle()
                } label: {
                    Text("삼항연산자 버튼 : \(isStaringState.description)")
                }
                
                //if else 구문 축약
                Text(isStaringState ? "빨강" : "파랑")
                
                RoundedRectangle(cornerRadius: isStaringState ? 500 : 100)
                    .fill(isStaringState ? Color.red : Color.blue)
                    .frame(
                        width: isStaringState ? 200 : 50,
                        height: isStaringState ? 200 : 400
                    )
                
                
                Spacer()
               
            }.padding(.vertical, 30)
            
            
            
            Spacer()
            
        }
        
    }
}

struct _3_TernaryOperatorsBasic_Previews: PreviewProvider {
    static var previews: some View {
        _3_TernaryOperatorsBasic()
    }
}
