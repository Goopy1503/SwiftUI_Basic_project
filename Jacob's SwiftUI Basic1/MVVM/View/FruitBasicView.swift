//
//  FruitBasicView.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/15.
//

import SwiftUI

struct FruitBasicView: View {
    
    //Property
    
    // 👉 @ObservedObject 🆚 @StateObject (ViewModel 객체화) ⭐️⭐️⭐️
    // 1️⃣ @ObservedObject → (SubView에서 사용) 부모 View에서 값을 넘겨받음
    // 2️⃣ @StateObject → (부모 View에서 사용) View 처음 생성, 초기화 함
    // 3️⃣ @EnvironmentObject → Navigation 또는 Sheet 사용시
    
//  @ObservedObject var fruitViewModel = FruitViewModel()
    @StateObject var FruitVM = FruitViewModel()
    
    // Body
    var body: some View {
        
        NavigationView {
            List{
                if FruitVM.isLoading {
                    ProgressView()
                }else {
                    
                    ForEach(FruitVM.fruitArray){ fruit in
                        
                        HStack (spacing: 20){
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        } // : HStack
                        
                    }//: Loop
                    
                }//: 조건문
                 
            }//: List
            // ⭐️⭐️⭐️⭐️ .onAppear = init() 함수 (View가 생성될때 실행될 로직 선언)
//            .onAppear{
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing:
                    // 상단 우측 아이콘에 Link 버튼 생성
                    NavigationLink{
                        SecondScreen( FruitVM : FruitVM)
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    })
            .navigationTitle("과일 리스트")
            
        }//:Navigation
        
        
    }//: Body
}



// SecondScreen
struct SecondScreen: View {
    // property
    @ObservedObject var FruitVM = FruitViewModel()
    @Environment (\.presentationMode) var 프리젠테이션모드
    
    var body: some View {
        
        ZStack{
            
            VStack(spacing: 20){
                //리스트 생성
                List{
                    ForEach(FruitVM.fruitArray){ fruit in
                        Text(fruit.name)
                            .font(.headline)
                            .foregroundColor(.green)
                    }//: Loop        
                }//: List
                
                
                // 뒤로가기 버튼 비교
                
                HStack{
                    VStack{
                        Text("두번째 페이지에서")
                        Text("Link 안쓰는 이유")
                        Text("⬇︎")
                        NavigationLink {
                            FruitBasicView()
                        } label: {
                            Text("뒤로가기")
                                .font(.headline)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .frame(width: 100, height: 100)
                                .background(Color.blue)
                                .cornerRadius(200)
                        }
                    }
                    
                    Button {
                        프리젠테이션모드.wrappedValue.dismiss()
                    } label: {
                        Text("뒤로가기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(width: 100, height: 100)
                            .background(Color.red)
                            .cornerRadius(200)
                    }
                    
                }
                
            }//: VStack
        
        }//: ZStack
        
    }//: Body

}


// Preview
struct FruitBasicView_Previews: PreviewProvider {
    static var previews: some View {
        FruitBasicView()
    }
}
