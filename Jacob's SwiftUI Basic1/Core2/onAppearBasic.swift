//
//  onAppearBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/14.
//

import SwiftUI

struct onAppearBasic: View {
    
    //property
    @State var noticeText: String = "onAppear 시작전"
    @State var count: Int = 0
    @State var loading: Bool = true
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                Text(noticeText)
                if loading {
                    ProgressView()
                }
                
                LazyVStack{
                    //50개의 직사각형 박스 만들기
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                        // onAppear : 새로 화면에 생길때 마다 count 1씩 증가 시키기
                            .onAppear {
                                count += 1
                            }
                    }// : Loop
                    
                }//: LazyVStack
                
            }//: ScrollView
            
            // 여기서 onAppearBasic View가 생성될 때 실행되는 logic 넣기 == init함수
            .onAppear{
                // dispatchQueue -> main thread에 2초 딜레이 후 이벤트 실행
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    loading = false
                    noticeText = "onAppear 시작 완료 했습니다."
                }
            }
            
            
            .navigationTitle("생성된 박스 : \(count)")
            
        }//: NavigationView
        
    }//: Body
}



struct onAppearBasic_Previews: PreviewProvider {
    static var previews: some View {
        onAppearBasic()
    }
}
