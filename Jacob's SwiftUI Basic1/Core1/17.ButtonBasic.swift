//
//  17.ButtonBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//

import SwiftUI

struct _7_ButtonBasic: View {
    
    //preperty
    @State var 상태 : String = "아직 버튼 안눌림" // 초기값
    
    var body: some View {
        VStack (spacing: 20){
            
            Text(상태)
                .font(.title)
                .padding(.vertical, 40)
            
            Divider()
            
            // action == button 눌렀을때 실행할 event넣기
            // label == button 모양 디자인
            
            //1번 버튼
            Button {
                //action
                self.상태 = "기본 버튼 눌림"
            } label: {
                Text("기본 버튼")
                    .font(.title2)
            }
            .accentColor(.red)
            
            Divider()
            
            //리셋버튼
            Button {
                //action
                self.상태 = "아직 버튼 안눌림"
            } label: {
                Text("리셋 버튼")
                    .font(.title2)
            }
            .accentColor(.blue)
            
            Divider()
            
            //2번 버튼
            Button {
                //action
                self.상태 = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 30)
                    .background(
                        Color.blue
                            .cornerRadius(25)
                            .shadow(radius: 10)
                    )
            }
            .accentColor(.red)
            
            Divider()
            
            //아이콘 버튼
            Button {
                //action
                self.상태 = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(color: Color.gray.opacity(0.5), radius: 5, y: 5)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }

            
            

        }//: VStack 끝
        
        
    }
}

struct _7_ButtonBasic_Previews: PreviewProvider {
    static var previews: some View {
        _7_ButtonBasic()
    }
}
