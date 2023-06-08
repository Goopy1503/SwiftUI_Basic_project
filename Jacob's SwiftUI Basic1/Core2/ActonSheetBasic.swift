//
//  ActonSheetBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/12.
//

import SwiftUI

struct ActonSheetBasic: View {
    
    //property
    @State var showActionSheet : Bool = false
    @State var result : String = ""
    @State var showAlert1 : Bool = false
    
    var body: some View {
        
        VStack{
        Spacer()
            
            //프로필 바
            HStack{
                Circle()
                    .frame(width: 40, height: 40)
                Text("Action Sheet")
                    .font(.headline)
                Spacer()
                
                // 우측 메뉴 아이콘
                Button{
                    //action
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }//: Button
                .actionSheet(isPresented: $showActionSheet) {getActionSheet()}
                .alert(isPresented: $showAlert1) {Alert(title: Text(result))}
                // ⭐️⭐️⭐️ 해결함!!
                
            }//: HStack
            .padding()
            .background(Color.gray.opacity(0.3))
            
            
            
            
            Rectangle()
            //설정한 비율에 따라 넓이가 달라짐
                .aspectRatio(1.0, contentMode: .fit)
                .overlay(alignment: .center, content: {
                    Image("구피")
                        .resizable()
                        .scaledToFill()
                })
            
        Spacer()
            
        }//: VStack
    }//: Body
    
    
    
    // 함수 선언
    func getActionSheet()-> ActionSheet{ // -> ActionSheet을 리턴값으로
        // 함수 안에 변수 선언
        let shareButton : ActionSheet.Button = .default(Text("공유하기")) {
            //action
            result = "공유 되었습니다"
            showAlert1.toggle()
        }
        let reportButton : ActionSheet.Button = .default(Text("신고하기")) {
            //action
            result = "신고 되었습니다"
            showAlert1.toggle()
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제하기")){
            //action
            result = "삭제 되었습니다"
            showAlert1.toggle()
        }
        let cancelButton: ActionSheet.Button = .cancel()
        // -> 'cancel'은 애플 kit 사용
        
        
        // ActionSheet을 리턴값으로
        return ActionSheet(
            title: Text("action sheet"),
            buttons: [shareButton, reportButton, deleteButton, cancelButton ]
        )
    }//: func : getActionSheet
    
}

    
    
    
    
struct ActonSheetBasic_Previews: PreviewProvider {
    static var previews: some View {
        ActonSheetBasic()
    }
}
