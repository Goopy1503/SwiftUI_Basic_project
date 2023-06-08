//
//  DarkmodeBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/14.
//

import SwiftUI

struct DarkmodeBasic: View {
    //property
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                
                VStack(spacing: 20){
                    //primary and secondary color
                    // 자동으로 다크 모드일 때 색변환 해줌
                    Text("Primary Color")
                        .foregroundColor(.primary)
                    Text("Scondary Color")
                        .foregroundColor(.secondary)
                    Text("Red Color")
                        .foregroundColor(.red)
                    
                    // Asset에서 adaptive라는 color Set 생성 -> light/dark 색 설정 가능
                    Text("Asset에서 Adaptive 색 설정")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    // @Environment 사용 -> colorSchme 설정
                    Text("@Environment 사용해서 colorSchme 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                    
                }//: VStack
                .font(.title3)
                
            }//: ScrollView
            
        }//: NavigationView
        
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DarkmodeBasic_Previews: PreviewProvider {
    static var previews: some View {
        DarkmodeBasic()
    }
}
