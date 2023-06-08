//
//  NavigationBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/10.
//

import SwiftUI

struct NavigationBasic: View {
    
    //property
    @State var condition : Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack{
                NavigationLink {
                    // destination : 목적지
                    NavigationBasic2()
                } label: {
                    Text("다음으로 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }
                
            } //: VStack 끝
            
            //상단페이지 제목
            //상단페이지 제목 스타일 -> .automatic: 자동, .inline: 상단에 작게,large: .leading 쪽으로 크게
            //네이게이션바 감추기
            //상단 좌우에 icon, text, button 사용
            .navigationTitle("페이지 제목")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(false)
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    condition.toggle()
                }, label: {
                    Image(systemName: "gear")
                })
            )
        } // : NaigaionView
        
        .sheet(isPresented: $condition) {
            ZStack{
                //background
                Color.green.opacity(0.4).ignoresSafeArea()
                
                //content
                Text("설정 페이지")
                    .font(.title)
            }
        }
        
    }
}

struct NavigationBasic_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBasic()
    }
}
