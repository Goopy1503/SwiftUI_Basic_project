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
        
        
     
        
    }
}

struct _4_AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        _4_AnimationBasic()
    }
}
