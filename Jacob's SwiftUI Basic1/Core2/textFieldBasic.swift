//
//  TextFieldBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/13.
//

import SwiftUI

struct textFieldBasic: View {
    
    // property
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    @State var inputText2: String = ""
    @State var userStoryData: [String] = []
    @State var showAlert: Bool = false
    @State var content: String = ""
    
    @Binding var selectedTab: Int
    
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 20){
                // TextField vs TextEditor = 한줄(짧은글) / 여러줄(긴 글)
                TextField("Name", text: $inputText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .font(.headline)
                
                TextEditor(text: $inputText2)
                    .frame(height: 250)
                    .colorMultiply(Color.gray.opacity(0.5))
                
                HStack{
                    Text("* 10자 이상 필수")
                        .frame(alignment: .leading)
                        .foregroundColor(Color.gray.opacity(0.9))
                    Spacer()
                }//: HStack
                
                Button {
                    // 이름이 00글자 이상일 때 saveText가 되도록 조건 설정
                    if isTextEnough()&&isTextEnough2() {
                        saveText()
                        showAlert.toggle()
                    }
                    
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough()&&isTextEnough2() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }// : Button
                .disabled(!isTextEnough())
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("저장되었습니다."))}
                
                ForEach(userNameData, id: \.self){item in
                    Text(item)
                }
                ForEach(userStoryData, id: \.self){item in
                    Text(item)
                }//⭐️⭐️⭐️⭐️⭐️ - 따로 저장 리스트를 만드는 방법이 궁금하다!!

                
                
            

                
                Spacer()
            }// : VStack
            .padding()
            .navigationTitle("Who are you?")
        }// : Navigation
        
    }// : Body
    
    //Function
    func isTextEnough() -> Bool{
        // 1개 이상의 텍스트가 되면 true, 아니면 false
        if inputText.count >= 1{
            return true
        } else {
            return false
        }
    }
    
    func isTextEnough2() -> Bool{
        // 10개 이상의 텍스트가 되면 true, 아니면 false
        if inputText2.count >= 10{
            return true
        } else {
            return false
        }
    }
    
    
    func saveText() {
        userNameData.append(inputText)
        userStoryData.append(inputText2)
        inputText = ""
        inputText2 = ""
        content = "\(userNameData) + \(userStoryData)"
    }
    
}

struct textFieldBasic_Previews: PreviewProvider {
    static var previews: some View {
        textFieldBasic(selectedTab: .constant(2))
    }
}
