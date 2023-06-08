//
//  StepperBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/13.
//

import SwiftUI

struct StepperBasic: View {
    
    //property
    @State var steppingCount : Int = 0
    @State var widthChange: CGFloat = 0
    @State var ballJump: CGFloat = 0
    @State var 에니메이션: Bool = true
    let 시간: Double = 0.8
    
    var body: some View {
        
        // [1]
        VStack{
            Spacer()
            Stepper("기본 Stepper : \(steppingCount)",value:  $steppingCount)
                .padding(30)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthChange, height: 100)
            
            
            Stepper("직사각형 넓이 변화 : \(widthChange)") {
                // onIncrese -> + 를 누를 때 변화되는것
                differentWidth(amount: 20)
            } onDecrement: {
                differentWidth(amount: -20)
            }
            .padding(30)
            
            Spacer()
        }//: [1] VStack
        
        
        // [2]
        VStack{
            
            Spacer()
            
            VStack{
                Spacer()
                Circle()
                    .foregroundColor(Color.pink)
                    .frame(width: 80, height: 80)
                    .frame(height: 300 + ballJump, alignment: 에니메이션 ? .bottom : .top)
            }.frame(width:400, height: 700)
            
            VStack{
                Button {
                    withAnimation(
                        .easeInOut
                        .speed(시간)
                        .repeatCount(2)){
                        에니메이션.toggle()
                    }
                } label: {
                    Text("Button")
                }
                .padding()
                .background()
                .cornerRadius(30)
                
                
                Stepper("점프 높이 변화 : \(ballJump)") {
                    // onIncrese -> + 를 누를 때 변화되는것
                    differentHeight(amount: 20)
                } onDecrement: {
                    differentHeight(amount: -20)
                }
                .padding(.bottom, 10)
            }//: VStack
            .padding(30)
            .background(Color.red.opacity(0.5))
            
        }//: [2] VStack
        
        
    }//: body
    
    // function
    func differentWidth(amount: CGFloat){
        withAnimation(.easeInOut){
            widthChange += amount
        }
    }
    
    
    func differentHeight(amount: CGFloat){
        withAnimation(.easeInOut){
            ballJump += amount
        }
    }
    
}

struct StepperBasic_Previews: PreviewProvider {
    static var previews: some View {
        StepperBasic()
    }
}

