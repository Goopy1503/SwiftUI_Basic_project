//
//  24.AnimationBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

//Animation == 시작/ 상태변화/ 도착 3가지 단계로 로직 실행
struct _4_AnimationBasic: View {
    
    //property
    @State var 에니메이션: Bool = true
    
    let 시간: Double = 0.5
    
    var body: some View {
        
        // [1]
        ZStack{
            
            VStack{
                RoundedRectangle(cornerRadius: 에니메이션 ? 300 : 10)
                    .fill(에니메이션 ? Color.teal : Color.pink)
                    .frame(width: 에니메이션 ? 150 : 900,
                           height: 에니메이션 ? 150 : 900)
                    .rotationEffect(Angle(degrees: 에니메이션 ? 0 : 360))
            }
            .frame(width: 400,
                    height: 900,
                    alignment: 에니메이션 ? .top : .bottom)
                
            Spacer()
            
            Button {
                withAnimation(.easeInOut //⭐️⭐️⭐️⭐️⭐️
                    //.delay(0.1) // -> 시간 지연
                    .repeatCount(3) // -> 3번 반복
                    //.repeatForever() // -> 무한 반복
                ){에니메이션.toggle()
                }
            } label: {
                Text("Button")
                    .font(.title)
            }
            
            
   
            
            
        }// : [1]끝
        
        
        
        
        
        //[2] - Speed에 따른 animation
        VStack{
            
        
            Button {
                에니메이션.toggle()
            } label: {
                Text("Button")
                    .font(.title)
                    .padding(.top,20)
            }
            Spacer()
            
            HStack{
                Spacer()
                
                //linear animation : 속도 일정
                Rectangle()
                    .foregroundColor(에니메이션 ? Color.purple : Color.red)
                    .frame(width: 80, height: 80)
                    .cornerRadius(에니메이션 ? 10 : 200)
                    .animation(.linear(duration: 시간), value: 에니메이션)
                Spacer()
                
                //easeIn animation : 가속
                Rectangle()
                    .foregroundColor(에니메이션 ? Color.purple : Color.red)
                    .frame(width: 80, height: 80)
                    .cornerRadius(에니메이션 ? 10 : 200)
                    .animation(.easeIn(duration: 시간), value: 에니메이션)
                Spacer()
                
                //easeOut animation : 감속
                Rectangle()
                    .foregroundColor(에니메이션 ? Color.purple : Color.red)
                    .frame(width: 80, height: 80)
                    .cornerRadius(에니메이션 ? 10 : 200)
                    .animation(.easeOut(duration: 시간), value: 에니메이션)
                Spacer()
                
                //easeInOut animation : 토기 모양 그래프
                Rectangle()
                    .foregroundColor(에니메이션 ? Color.purple : Color.red)
                    .frame(width: 80, height: 80)
                    .cornerRadius(에니메이션 ? 10 : 200)
                    .animation(.easeInOut(duration: 시간), value: 에니메이션)
                Spacer()
            }
            .frame(width:400, height: 700, alignment: 에니메이션 ? .top : .bottom)
        } // : [2]끝
        
        
        
        // : [3] - Spring animation
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

struct _4_AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        _4_AnimationBasic()
    }
}
