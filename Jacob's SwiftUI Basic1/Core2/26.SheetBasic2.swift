//
//  26.SheetBasic2.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/10.
//

import SwiftUI

struct _6_SheetBasic2: View {
    
    // property
    // 넘겨준 값을 @Binding 해야함
    // sheet으로 넘길때는 presentaon 모드
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            
            //Background
            Color.red.opacity(0.3).ignoresSafeArea()
            
            
            
            // Content
            Button {
                // Sheet 닫기 action
                presentationMode.wrappedValue.dismiss() //프모.덮어씌움.사라진다
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .padding()
                
                
                
                
                
                
            }
        }
    }
}

struct _6_SheetBasic2_Previews: PreviewProvider {
    static var previews: some View {
        _6_SheetBasic2()
    }
}
