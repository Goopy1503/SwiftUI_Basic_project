//
//  OnTabGestureBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/15.
//

import SwiftUI

// onTabGesture -> Button 대신에 사용하는 이미지나 텍스트
// 탭하는 횟수 설정 가능 ex) 2번 클릭했을때 실행.

struct OnTabGestureBasic: View {
    
    //property
    @State var isSelected: Bool = false
    @State var heartColor: [Color] = [.red, .mint, .purple, .yellow]
    @State private var BGColor: Color = .red
    
    var body: some View {
        VStack(spacing: 40){
            
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
                .overlay {
                    Text(isSelected ? "Clicked !" : "Not yet" )
                        .font(.title)
                        .foregroundColor(Color.white)
                }
            
            // 1. 일반적인 Button
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25.0)
            }
            
            // 2. OnTabGesture 한번 클릭시 실행
            Text("2. OnTabGesture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.teal)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. OnTabGesture 두번 클릭시 실행
            Text("3. OnTabGesture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .cornerRadius(25.0)
                .onTapGesture (count: 2){
                    isSelected.toggle()
                }
            
            // 4. 누를때마다 바뀌는 하트
            Image(systemName: "heart.fill")
                .font(.system(size: 150))
                .foregroundColor(BGColor)
                .onTapGesture{
                    BGColor = heartColor.randomElement()!
                    isSelected.toggle()
                }
            
            
            Spacer()
            
        }//: VStack
        .padding(40)
    }
}

struct OnTabGestureBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnTabGestureBasic()
    }
}
