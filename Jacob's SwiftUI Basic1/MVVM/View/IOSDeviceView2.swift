//
//  IOSDeviceView2.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/17.
//

import SwiftUI

struct IOSDeviceView2: View {
    
    //property
    let 선택된아이템: String
    let 가격: Int
    
    var body: some View {
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20) {
                HStack{
                    Text("당신이 선택한 기기는?")
                        .font(.title2)
                    
                    Text(선택된아이템)
                        .font(.title3)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.black)
                        .cornerRadius(15)
                }
                
                HStack{
                    Text("이 기기의 가격은?")
                        .font(.title2)
                    
                    Text("\(가격) 만원")
                        .font(.title3)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.black)
                        .cornerRadius(15)
                }
                
                NavigationLink {
                    //destination
                    IOSDeviceView3()
                } label: {
                    Text("다음 페이지로 이동 ->")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                }//: Link

                
                
            }//: VStack
            
        }//: ZStack
    }//: Body
}

struct IOSDeviceView2_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView2(선택된아이템: "아이폰", 가격: 150)
    }
}
