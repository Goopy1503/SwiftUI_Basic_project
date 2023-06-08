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
    @State var 에니메이션: Bool = true
    
    let 시간: Double = 0.5
    
    var body: some View {
        
        
        
        /// : [3] - Spring animation
        ZStack{
            
            Button {
                withAnimation(.spring(
                    
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0)) {
                        에니메이션.toggle()
                    }
                //respose : 단일 진동 시간
                //dampingFraction : 흔들임 정지 속도 (0일때 영원히 안멈춤) 0.0 ~ 1.0
                //blendDuration : 다른 에니메이션 전환 속도
                
            } label: {
                Text("Button")
            }
            
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(에니메이션 ? Color.yellow : Color.pink)
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: 에니메이션 ? 0 : 720))
            }
            .frame(width: 380, height: 800, alignment: 에니메이션 ? .topLeading : .bottomLeading)
            
            
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(에니메이션 ? Color.pink : Color.purple)
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: 에니메이션 ? 0 : 720))
            }
            .frame(width: 380, height: 800, alignment: 에니메이션 ? .bottomLeading : .bottomTrailing)
            
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(에니메이션 ? Color.purple : Color.mint)
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: 에니메이션 ? 0 : 720))
            }
            .frame(width: 380, height: 800, alignment: 에니메이션 ? .bottomTrailing :.topTrailing)
            
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(에니메이션 ? Color.mint : Color.yellow)
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: 에니메이션 ? 0 : 720))
            }
            .frame(width: 380, height: 800, alignment: 에니메이션 ? .topTrailing : .topLeading)
            
        }
        // : [3] 끝
        
        
        
    }
}

struct _4_AnimationBasic3_Previews: PreviewProvider {
    static var previews: some View {
        _4_AnimationBasic3()
    }
}
