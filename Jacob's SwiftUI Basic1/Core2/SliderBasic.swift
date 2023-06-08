//
//  SliderBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/14.
//

import SwiftUI

struct SliderBasic: View {
    
    //property
    @State var sliderValue: Double = 5
    @State var BGColor : Color = .blue
    @Binding var selectedTab: Int
    
    var body: some View {
        
        ZStack{
            Color.teal.opacity(0.4).edgesIgnoringSafeArea(.top)
            VStack(spacing: 20) {
                
                Text(String(format: "%.0f", sliderValue)) // %.Nf -> 소수점 N번째 자리까지
                    .font(.largeTitle)
                    .foregroundColor(BGColor)
                    .frame(width: 100, height: 100)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 10)
                    .padding(.bottom)
                
                
                HStack{
                    Text("레벨 : ")
                    Text("\(sliderValue)")
                }//: HStack
                .foregroundColor(BGColor)
                
                
                Slider(
/*
                    value는 항상 float (double) 타입으로! - Int (x)
                    in : 슬라이더읩 범위 설정
                    step : 슬라이더 단계 증/감 단위 설정
                    onEditingChanged : 슬라이더 value 변경시 이벤트
*/
                    value : $sliderValue,
                    in: 1...10,
                    step: 1.0,
                    onEditingChanged: { _ in
                        if sliderValue > 7.0 {
                            BGColor = .red
                        }else{
                            BGColor = .blue
                        }
                    },
                    
                    //최소,, 최대값 라벨
                    minimumValueLabel: Text("1"),
                    maximumValueLabel: Text("10"),
                    label: {
                        Text("라벨")
                    }
                ) //: Slider
                .padding(40)
                .accentColor(BGColor)
                
                Text(" * 레벨 7 이상 소음 주의")
                    .foregroundColor(.gray)
                
                
                
            }//; VStack
        }
        
    }
}

struct SliderBasic_Previews: PreviewProvider {
    static var previews: some View {
        SliderBasic(selectedTab: .constant(1))
    }
}
