//
//  24.AnimationBasic2.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/06/08.
//


import SwiftUI

//Animation == 시작/ 상태변화/ 도착 3가지 단계로 로직 실행
struct AnimationBasic2: View {
    
    //property
    @State var 에니메이션: Bool = true
    
    let 시간: Double = 0.2
    
    var body: some View {
        
        
        

        ///[2] - Speed에 따른 animation
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
        
        
    }
}

struct AnimationBasic2_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasic2()
    }
}
