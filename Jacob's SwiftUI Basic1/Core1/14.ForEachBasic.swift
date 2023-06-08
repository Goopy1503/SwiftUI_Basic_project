//
//  14.ForEachBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/08.
//

import SwiftUI

struct _4_ForEachBasic: View {
    
    //변수 array 생성
    var fruit: [String] = ["🍎","🥝","🍠","🍌"]
    
    var body: some View {
        // index(순서대로) 반복
        VStack{
            
            
            ForEach(0..<10) { 숫자 in    //index값이 돌면서 하나씩 증가
                HStack{
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("번호 : \(숫자)")
                }
            }
         
            
            Divider()
                .padding()
            
            HStack{
                // Array 데이터 반복
                // ForEach == Random Acces Collection 타입 -> 데이터값에 하나씩 아이디 값을 넣어줘야한다.
                ForEach(fruit, id: \.self){아이템 in
                    Text(아이템)
                        .font(.largeTitle)
                    
                }
            }
            
            
        }
        
    }
}

struct _4_ForEachBasic_Previews: PreviewProvider {
    static var previews: some View {
        _4_ForEachBasic()
    }
}
