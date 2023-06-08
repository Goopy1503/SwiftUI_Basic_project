//
//  ContextMenu.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/12.
//

import SwiftUI

struct ContextMenu: View {
    
    //property
    @State var statusText: String = ""
    @State var BGColor: Color = Color.cyan
    
    var body: some View {
        VStack(spacing: 30){
            
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Context Menu Test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다.")
                    .font(.subheadline)
            }
            
        }//: VStack
        .foregroundColor(.white)
        .padding(30)
        .background(BGColor)
        .cornerRadius(20)
        // context menu = 팝업 + 버튼 (길게 누르면 등장)
        .contextMenu{
            Button {
                statusText = "공유가 되었습니다."
                BGColor = .yellow
            } label: {
                
                Label {
                    //title
                    Text("Share post")
                } icon: {
                    Image(systemName: "square.and.arrow.up")
                }

            }//: Button
            
            Button {
                statusText = "신고가 접수되었습니다."
                BGColor = .red
            } label: {
                
                Label {
                    //title
                    Text("Report post")
                } icon: {
                    Image(systemName: "exclamationmark.bubble")
                }

            }//: Button
            
            Button {
                statusText = "좋아요 추가!"
                BGColor = .green
            } label: {
                
                Label {
                    //title
                    Text("Like post")
                } icon: {
                    Image(systemName: "hand.thumbsup.fill")
                }

            }//: Button

        }//: context Menu
        
        
    }//: Body
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
