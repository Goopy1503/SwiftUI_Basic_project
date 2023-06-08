//
//  ListBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/11.
//

import SwiftUI

struct ListBasic: View {
    
    //property
    @State var fruits : [String] = [
        "사과","오렌지","바나나","수박"]
    
    @State var meats : [String] = [
        "오리고기","소고기","닭고기","돼지고기"]
    
    var body: some View {
        NavigationView {
            List{
                // [과일 섹션]
                Section{ //섹션 구분
                    //content
                    ForEach(fruits, id: \.self){ i in
                        Text(i)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete) //삭제 모드
                    .onMove(perform: move) // 편집 모드
                    .listRowBackground(Color.blue)  // 리스트 BG컬러
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.blue)
                }// : Section 끝
                
                
                // [고기섹션]
                Section {
                    //content
                    ForEach(meats, id: \.self){i in
                        Text(i)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                } header: {
                    Text("고기 종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }
            }// : List 끝
            .navigationTitle("우리동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            
            
        }//: NavigationView 끝
        
        
    } // : Body 끝
    
    // 함수 선언
    func delete(fruitsIndex: IndexSet){ // 함수를 받는 매개변수 = indexSet
        fruits.remove(atOffsets: fruitsIndex)
    }
    func move(appleIndex: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: appleIndex , toOffset: newOffset)
    }
    
    var addButton: some View {
        Button {
            fruits.append("딸기")
        } label: {
            Text("Add")
        }

    }
    
    
    // indice = 징후,
    // offset = 상쇄하다, 위치?
    
    
}





struct ListBasic_Previews: PreviewProvider {
    static var previews: some View {
        ListBasic()
    }
}
