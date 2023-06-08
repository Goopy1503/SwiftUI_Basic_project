//
//  IOSDevice1.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/16.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel초기화 -> @StateObject
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.IOSDeviceArray){ i in
                    
                    //리스트 안에 링크 버튼 추가!
                    NavigationLink {
                        //destination
                        IOSDeviceView2(선택된아이템: i.name, 가격: i.price)
                    } label: {
                        HStack{
                            Text(i.name)
                            
                        }
                    }//:Link

                }//: Loop
            }//: List
            .navigationTitle(Text("애플 제품 목록"))
            
        }//: Navigation
        // Navigation 하위 뷰에 ViewModel을 environmentObject로 넘겨줌
        .environmentObject(viewModel)
    }
}

struct IOSDeviceView1_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView1()
    }
}
