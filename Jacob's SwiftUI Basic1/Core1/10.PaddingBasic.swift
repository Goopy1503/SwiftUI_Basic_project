//
//  10.PaddingBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/08.
//

import SwiftUI

struct _0_PaddingBasic: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            //Padding의 기본
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .padding() // = .padding(.all, 15)
                
                .padding(.horizontal, 20) // 위에 있는건 padding
                .background(Color.red) // 백그라운드, VStack 기준!!
                .padding(.bottom, 20) // 밑에 있는건 margin
            
                .background(Color.gray)
            
            Divider()
            
            //2. Padding 응용
            Text("I Slay")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment:.leading)
                .padding(.bottom, 20)
            
            Text("흔들리는 꽃들속에서 내 샴푸향이 느껴진거야. 흔들리는 꽃들속에서 내 샴푸향이 느껴진거야. 흔들리는 꽃들속에서 내 샴푸향이 느껴진거야. 흔들리는 꽃들속에서 내 샴푸향이 느껴진거야. 흔들리는 꽃들속에서 내 샴푸향이 느껴진거야. ")
            
        }
        //VStack 밖에서 padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 1, y: 10)
        )
        .padding()
        
    }
}





struct _0_PaddingBasic_Previews: PreviewProvider {
    static var previews: some View {
        _0_PaddingBasic()
    }
}
