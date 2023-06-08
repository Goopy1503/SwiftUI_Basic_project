//
//  1.TextBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/04.
//

import SwiftUI

struct __TextBasic: View {
    var body: some View {
        VStack(spacing: 0){
            // Font 사이즈를 title - body - footnote 등으로 정할 수 있음.
            // 해상도에 맞게 responsive 하게 변경
            Text("I Slay")
                .font(.title)
                .fontWeight(.black)
            Text("I Slay")
                .font(.title)
                .fontWeight(.heavy)
                .italic()
                .strikethrough(true, color:Color.yellow)
            Text("I Slay")
                .font(.title)
                //.fontWeight(.bold)
                .bold()
                .underline(true, color: Color.red)
            
            
            //시스템 폰트로 하면 반응형X 고정됨
            Text("I Slay.".uppercased())
                .font(.system(size:30, weight: .heavy, design: .serif))
            
            // multiline text alignment
            Text("멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬. 멀티라인 텍스트 정렬.")
                .multilineTextAlignment(.center)
            
            
            
            
        }
        
    }
}

struct __TextBasic_Previews: PreviewProvider {
    static var previews: some View {
        __TextBasic()
    }
}
