//
//  13.InitEnumBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/08.
//

import SwiftUI

struct _3_InitEnumBasic: View {
    
    // 변수 선언
    // 변수마다 타입 선언
    let BGColor: Color
    let price: Int
    let emoji: String
    
    // enum 생성
    // 공통된 속성의 변수명을 폴더화한다.
    enum Fruitcase{
        case apple
        case banana
        case orange
        case kiwi
    }
    
    // init ()⭐️⭐️
    // View가 생성될 때, 실행되는 로직을 넣는다!
       
    // ↓ 불러오는 파라미터(?)
    init(price:Int, fruit: Fruitcase){
        
        // 초기화
        self.price = price
        
        // if문 추가
        if fruit == .apple{
            self.emoji = "🍎"
            self.BGColor = .red
        } else if fruit == .banana {
            self.emoji = "🍌"
            self.BGColor = .yellow
        } else if fruit == .orange{
            self.emoji = "🍊"
            self.BGColor = .orange
        } else {
            self.emoji = "🥝"
            self.BGColor = .green
        }
    
    }
    
    
    var body: some View {
        
        VStack(spacing:10){
            
            Text(emoji)
                .font(.largeTitle)
            
            Text("\(price)원")
                .font(.title)
                .foregroundColor(BGColor)
        }
        //VStack 설정값
        .frame(width: 150, height: 150)
        .background(.white)
        .cornerRadius(15)
        .shadow(color: BGColor, radius: 15, x: 0, y: 10)
        .padding()
        
    }
}



struct _3_InitEnumBasic_Previews: PreviewProvider {
    static var previews: some View {
        
        //Preview를 사용할 때, '파일명'컴포넌트를 불러온다.
        //init함수에 선언한 파라미터(count, fruit)를 View에 나타나게 하기 위해서 임의의 값을 샘플로 넣어줘야 한다.
        
        HStack{
            VStack{
                _3_InitEnumBasic(price: 1000, fruit: .apple)
                _3_InitEnumBasic(price: 700, fruit: .banana)
            }
            VStack{
                _3_InitEnumBasic(price: 1200, fruit: .kiwi)
                _3_InitEnumBasic(price: 900, fruit: .orange)
            }
        }
    }
}





//
