//
//  NavigationBasic2.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/10.
//

import SwiftUI

struct NavigationBasic2: View {
    
    //property
    @Environment(\.presentationMode) var 프리젠테이션모드
    
    var body: some View {
        ZStack{
            //
            Color.green.ignoresSafeArea()
                
            VStack(spacing: 20){
                Button {
                    프리젠테이션모드.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                }
                
                
                    NavigationLink{
                        //destination
                        ZStack{
                            Color.red.ignoresSafeArea()
                            Text("3번째 페이지 입니다")
                                .font(.largeTitle)
                        }
                    }label: {
                        Text("3번째 페이지로 이동")
                            .foregroundColor(.green)
                            .font(.headline)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                    }
                
            }
        }
        
    }
}

struct NavigationBasic2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NavigationBasic2()
        }
    }
        
    
}
