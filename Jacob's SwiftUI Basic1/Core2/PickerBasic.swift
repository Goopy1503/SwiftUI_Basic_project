//
//  PickerBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/13.
//

import SwiftUI

struct PickerBasic: View {
    //property
    let phoneType : [String] = ["애플", "삼성", "샤오미", "소니"]
    
    @State var selectedIndex: Int = 0
    
    var body: some View {

        NavigationView {
            
            Form{
                
                Section{
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0..<phoneType.count, id: \.self){item in
                            Text(phoneType[item])
                        }
                    }//: Picker
                    .pickerStyle(.navigationLink)
                    
                }//: Section
                
                Text("      제조사 :  \(phoneType[selectedIndex])      ")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                
                
            }//: Form
            .navigationTitle(Text("현재 사용중인 핸드폰 기종은?"))
            .navigationBarTitleDisplayMode(.inline)
        }//: Navigation
    }
}

struct PickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        PickerBasic()
    }
}
