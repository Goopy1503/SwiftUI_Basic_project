//
//  IOSDeviceView3.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/17.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    //property
    //@StateObject에서 선언한 ViewModel을 #EnvironmetObject를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack{
            //background
            Color.cyan.ignoresSafeArea()
            
            ScrollView{
                VStack(spacing:20) {
                    ForEach(viewModel.IOSDeviceArray) { i in
                        Text(i.name)
                    }
                    
                }//: VStack
                .foregroundColor(.white)
                .font(.title2)
                
            }//: Scroll
            
        }//: ZStack
    }
}

struct IOSDeviceView3_Previews: PreviewProvider {
    static var previews: some View {
        //preview는 ViewModel이 뭔지 모른다.
        //.environmentObject로 View와 같은 환경 만들어주기.
        IOSDeviceView3()
            .environmentObject(IOSDeviceViewModel())
    }
}
