//
//  24.AnimationBasic3.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/06/08.
//

import SwiftUI

//Animation == 시작/ 상태변화/ 도착 3가지 단계로 로직 실행
struct _4_AnimationBasic3: View {
    
    //property
    @State var Animation: Bool = true
    
    var body: some View {
        
        
        ZStack{
            
            Button {
                withAnimation(.spring(
                    
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0)) {
                        Animation.toggle()
                    }
                //respose : 단일 진동 시간
                //dampingFraction : 흔들임 정지 속도 (0일때 영원히 안멈춤) 0.0 ~ 1.0
                //blendDuration : 다른 에니메이션 전환 속도
                
            } label: {
                Text("Button")
                    .font(.title)
            }//】 Button
            .scaleEffect(Animation ? 1.5 : 0.7)
            
            AnimationBox(startColor: Color.yellow, finishColor: Color.mint,
                     startLocation: .topLeading, finishLocation: .bottomTrailing,
                         Animation: Animation)
            
            AnimationBox(startColor: Color.pink, finishColor: Color.yellow,
                     startLocation: .bottomLeading, finishLocation: .topTrailing,
                         Animation: Animation)
            
            AnimationBox(startColor: Color.purple, finishColor: Color.pink,
                     startLocation: .bottomTrailing, finishLocation: .topLeading,
                         Animation: Animation)
            
            AnimationBox(startColor: Color.mint, finishColor: Color.purple,
                     startLocation: .topTrailing, finishLocation: .bottomLeading,
                         Animation: Animation)
            
        }//】 ZStack
    
            
    }//】 Body
    
    
}


struct AnimationBox: View {
    
    //property
    let startColor : Color
    let finishColor : Color
    let startLocation : Alignment
    let finishLocation : Alignment
    var Animation: Bool = true
    
    var body: some View {
        
        VStack{
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Animation ? startColor : finishColor)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: Animation ? 0 : 720))
        }
        .frame(width: 380, height: 800, alignment: Animation ? startLocation : finishLocation)
    }//】 Body
    
}//: struct



struct _4_AnimationBasic3_Previews: PreviewProvider {
    static var previews: some View {
        _4_AnimationBasic3()
    }
}
