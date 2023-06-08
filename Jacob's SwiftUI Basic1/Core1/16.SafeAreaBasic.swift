//
//  16.SafeAreaBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct _6_SafeAreaBasic: View {
    var body: some View {
        
        ZStack{
            //background
            Color.blue
                .ignoresSafeArea()
            
            //content
            VStack {
                Text("I Slay")
                    .font(.largeTitle)
            }
            
        }//: ZStack (블루)
        
        
        // 2번 화면
        ScrollView(showsIndicators: false){
            VStack{
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(0..<10) {순서 in
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(25)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(Text("\(순서) 번 리스트"))
                }
                
            } //: VStack 끝
        } // : ScrollView 끝
        .background(
            Color.blue
            .ignoresSafeArea()
        )
        
        
        
    }
}







struct _6_SafeAreaBasic_Previews: PreviewProvider {
    static var previews: some View {
        _6_SafeAreaBasic()
    }
}
