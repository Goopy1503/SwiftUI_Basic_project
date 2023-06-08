//
//  AppStorageBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/18.
//

import SwiftUI

struct AppStorageBasic: View {
    
    //property
    
    // @State → 앱 재시작시 버튼 초기화
    // @App Storage → 앱 다시 열때 자동으로 key에서 이름 호출
    @State var generalname: String?
    @AppStorage("goopy") var appStorageNAme: String?
    
    var body: some View {
        
        VStack(spacing: 20){
            
            // @State 사용
            VStack(spacing: 10){
                Text("@State로 저장")
                // 초기값 위에서 미리 선언 안하고, 옵셔널 값으로 선언!
                Text(generalname ?? "당신의 이름은?")
                
                Button {
                    generalname = "Kooty"
                } label: {
                    Text("이름 불러오기")
                }
            } //: State
            .padding()
            .padding(.horizontal)
            .border(.green)
            .padding()
            
            
            
            // @AppStorage 사용
            VStack(spacing: 10){
                Text("@AppStorage로 저장")
                // 초기값 위에서 미리 선언 안하고, 옵셔널 값으로 선언!
                Text(appStorageNAme ?? "당신의 이름은?")
                
                Button {
                    appStorageNAme = "Kooty"
                } label: {
                    Text("이름 불러오기")
                }
            }//: AppStorage
            .padding()
            .padding(.horizontal)
            .border(.red)
            .padding()
            
        }//: VStack
        .font(.title3)
    }
}

struct AppStorageBasic_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBasic()
    }
}
