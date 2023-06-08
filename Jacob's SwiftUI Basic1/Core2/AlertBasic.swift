//
//  AlertBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/11.
//

import SwiftUI

struct AlertBasic: View {
    //property
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var showAlert4: Bool = false
    
    @State var BGColor: Color = Color.yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType : AlerCase? = nil
    
    enum AlerCase {
        case success
        case error
        case save
    }
    
    
    var body: some View {
        ZStack{
            //BG
            BGColor.ignoresSafeArea()
            
            VStack(spacing:20){
                // [1]
                Button {
                    showAlert1.toggle()
                } label: {
                    Text("패스워드")
                }
                // sheet, alert
                .alert(isPresented: $showAlert1) {
                    Alert(title: Text("패스워드 오류 입니다. 다시 시도하세요."))
                }

                
                
                // * [2]
                Button {
                    showAlert2.toggle()
                } label: {
                    Text("삭제")
                }
                .alert(isPresented: $showAlert2) {
                    getAlert2()
                }
                
                
                
                // * [3]
                HStack(spacing: 30){
                    // [실패 버튼]
                    Button {
                        showAlert3.toggle()
                        alertTitle = "업로드 실패"
                        alertMessage = " 업로드에 실패하였습니다. 다시 확인해주세요."
                        BGColor = .red
                    } label: {
                        Text("업로드 실패")
                    }
                    
                    
                    // [성공 버튼]
                    Button {
                        showAlert3.toggle()
                        alertTitle = "업로드 성공"
                        alertMessage = " 업로드에 성공하였습니다."
                        BGColor = .green
                    } label: {
                        Text("업로드 성공")
                    }
                }// : HStack 끝
                .alert(isPresented: $showAlert3) {getAlert3()}
                
                
                
                // * [4]
                HStack(spacing: 30){
                    // [실패시]
                    Button {
                        alertType = .error
                      
                    } label: {
                        Text("작성 취소")
                    }
                    
                    // [성공시]
                    Button {
                        alertType = .success
                       
                    } label: {
                        Text("제출 성공")
                    }
                    
                    // [임시 저장]
                    Button {
                        alertType = .save
                       
                    } label: {
                        Text("임시 저장")
                    }
                    
                } // : HStack
                .alert(isPresented : $showAlert4) {getAlert4()}
                // ⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️ 도저히 모르겠음
                

            }// : VStack
            
        }// : ZStack
    }// : Body
    
    // 함수
    // : [2]
    func getAlert2() -> Alert {  // 리턴값 -> Alert
        return Alert(
            title: Text("메세지 삭제"),
            message: Text("정말 삭제 하시겠습니까?"),
            primaryButton: .destructive(Text("삭제"),action: {BGColor = .red}),
            secondaryButton: .cancel() //cancel 버튼은 애플이 제공
        )
    }// : func getAlert2
    
    
    //: [3]
    func getAlert3() -> Alert{
        return Alert(
            title: Text(alertTitle),
            message: Text(alertMessage),
            dismissButton: .default(Text("OK")) // -> 선택지가 없을 때
        )
    }// : func getAlert3
    
    
    // : [4]
    func getAlert4() -> Alert {
        switch alertType {
        
        case .error:
            return Alert(
                title: Text("작성이 취소되었습니다."),
                dismissButton: .default(Text("OK"),action:{BGColor = .red})
            )
        
        case .success:
            return Alert(
                title: Text("제출이 완료되었습니다."),
                dismissButton: .default(Text("OK"),action:{BGColor = .green})
            )
            
        case .save:
            return Alert(
                title: Text("임시저장 되었습니다."),
                dismissButton: .default(Text("OK"),action:{BGColor = .orange})
            )
            
        default: return Alert(title: Text("에잇"))
        }// : switch 끝
    }// : func getAlert4
    
    
    
}

struct AlertBasic_Previews: PreviewProvider {
    static var previews: some View {
        AlertBasic()
    }
}
