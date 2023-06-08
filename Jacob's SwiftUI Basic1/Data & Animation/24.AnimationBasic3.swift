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
            
            AnimationBox(startColor: Color.orange, finishColor: Color.red,
                     startLocation: .topLeading, finishLocation: .bottomLeading,
                         Animation: Animation)
            
            AnimationBox(startColor: Color.pink, finishColor: Color.indigo,
                     startLocation: .bottomLeading, finishLocation: .bottomTrailing,
                         Animation: Animation)
            
            AnimationBox(startColor: Color.purple, finishColor: Color.green,
                     startLocation: .bottomTrailing, finishLocation: .topTrailing,
                         Animation: Animation)
            
            AnimationBox(startColor: Color.mint, finishColor: Color.yellow,
                     startLocation: .topTrailing, finishLocation: .topLeading,
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
            RoundedRectangle(cornerRadius: Animation ? 30 : 70)
                .foregroundColor(Animation ? startColor : finishColor)
                .frame(width: Animation ? 100 : 150,
                       height: Animation ? 100 : 150)
                .rotationEffect(Angle(degrees: Animation ? 0 : 720))
        }

        .frame(width: 380, height: 780, alignment: Animation ? startLocation : finishLocation)
    }//】 Body
    
}//: struct



struct _4_AnimationBasic3_Previews: PreviewProvider {
    static var previews: some View {
        _4_AnimationBasic3()
    }
}
