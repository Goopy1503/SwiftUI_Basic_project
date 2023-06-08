//
//  8.BackgroundBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/07.
//

import SwiftUI

struct __BackgroundBasic: View {
    var body: some View {
        
        VStack (spacing: 10){
            
            // 1.Background
            // 텍스트 먼저-> 영역지정-> 백그라운드에 도형입력-> fill 그라디언트
            Text("I Slay")
                .font(.title)
                .frame(width: 100, height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing)
                                )
                            )
                .frame(width: 120, height: 120)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.purple)
                            )
                .padding(20)
            
            
        
            
            
            // 2. Overlay (덮어씌우기)
            // 도형 먼저-> 영역지정-> 텍스트 오버레이-> 백드라운드
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("🍠")
                        .font(.title)
                        .fontDesign(.serif)
                        .foregroundColor(Color.white)
                        )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120, height: 120)
                            )
                .padding(20)
            
            
            
    
            
            
            // 3.Background and Overlay
            Rectangle()
                .frame(width: 120, height: 120)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 80, height: 60, alignment: .center)
                    ,alignment: .top
                        )
                .background(
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 450, height: 150)
                )
                .padding(30)
         
            

            
            
            
            // 좋아요 알림 아이콘 만들기
            Image(systemName: "heart.fill")
                .font(.system(size: 50))
                .foregroundColor(Color.white)
                // 아이콘 배경 테두리 생성
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.teal, Color.blue]),
                                startPoint: .top,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.blue, radius: 8, x: 0, y: 5) //그림자
                        // 빨간원 생성
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 30, height: 30)
                                // 그위에 숫자 표시
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                )
                                .shadow(color: Color.red, radius: 10, x: 0, y: 5)
                            ,alignment: .bottomTrailing
                        )
                )
                .padding(20)
            // 이쁘다..!!
            
            
            
            
        }
    }
}

struct __BackgroundBasic_Previews: PreviewProvider {
    static var previews: some View {
        __BackgroundBasic()
    }
}
