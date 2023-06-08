//
//  ToggleBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/13.
//

import SwiftUI

struct ToggleBasic: View {
    
    //property
    @State var toggleCondition: Bool = false
    
    var body: some View {
        VStack{
            Toggle(isOn: $toggleCondition) {
                Text("로그인 상태 선택")
            }//: Toggle
            .toggleStyle(SwitchToggleStyle(tint:Color.blue))
            HStack{
                Text("로그인 상태 : ")
                Text(toggleCondition ? "온라인" : "오프라인")
                    .foregroundColor(toggleCondition ? Color.blue : Color.red)
            }
            Spacer()
        }//: VStack
        .padding(.horizontal, 100)
        
    }
}

struct ToggleBasic_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBasic()
    }
}
