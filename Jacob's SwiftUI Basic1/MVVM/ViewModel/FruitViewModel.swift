//
//  FruitViewModel.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/15.
//

import Foundation


class FruitViewModel: ObservableObject{ // -> 객채화, View에 넘겨주고 넘겨받는게 가능해짐
    
    //💡헷갈리지 않기!
    //ObservableObject (protocol - 통신규약?)
    //@ObservedObject (Wrapper - 포장지?)
    
    
    //property
    
    // @Published = @State 와 비슷하게 상태값 선언 (class 안에서는 @Published 사용!!)
    // View에서 Fruit 배열값 변경시 -> ViewModel에서 알아서 변경 반영
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    // init (View Model이 생성될 때 실행되는 로직 선언) == .onAppear
    init(){
        getFruit()
    }
    
    // 👉 대부분의 로직/함수는 ViewModel에 작성! ⭐️⭐️
    
    // Fruit 생성, Array에 추가하는 함수 (+)
    func getFruit() {
        
        // fruit에 각각의 값 선언
        let fruit1 = FruitModel(name: "딸기", count: 25)
        let fruit2 = FruitModel(name: "사과", count: 4)
        let fruit3 = FruitModel(name: "바나나", count: 8)
        
        // 3초 딜레이후, fruitArray에 선언된 값 집어넣기
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            // 변수가 함수 밖에 있을때 -> self. (알아서 추적해라!)
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }// : func getFruit
    
    
    func deleteFruit (순서: IndexSet) {
        fruitArray.remove(atOffsets: 순서)
    }
}
