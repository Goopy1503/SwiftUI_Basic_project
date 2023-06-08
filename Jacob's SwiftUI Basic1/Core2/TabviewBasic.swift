//
//  TabviewBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/14.
//

import SwiftUI

struct TabviewBasic: View {
    
    //property
    @State var initPageNumber: Int = 0
    
    var body: some View {
        
        TabView(selection: $initPageNumber) {
            //selection : TabView가 어떤 페이지를 가리키는지 설정
            
                HomeView(selectedTab: $initPageNumber)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0) // selection == 0
                
                SliderBasic(selectedTab: $initPageNumber)
                    .tabItem {
                        Image(systemName: "globe")
                        Text("SliderBasic")
                    }
                    .tag(1) // 1번 화면
                
            textFieldBasic(selectedTab: $initPageNumber)
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                    .tag(2) // 2번 화면
        }//: TabView
        .tabViewStyle(.automatic)
        
    }// : Body
    
}

struct TabviewBasic_Previews: PreviewProvider {
    static var previews: some View {
        TabviewBasic()
    }
}



// Home View
struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View{
        
        ZStack{
            
            //background color
            Color.teal.edgesIgnoringSafeArea(.top)
            
            //foreground
            VStack(spacing: 20){
                Text("홈화면")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Button {
                    
                } label: {
                    Text("프로필 화면 이동")
                        .font(.headline)
                        .padding(20)
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.3), radius: 1, y: 6)
                }

                
            }//: VStack
            
        }//: ZStack
        
    }//: Body
    
}

















