//
//  5.Icon.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/07.
//

import SwiftUI

struct __Icon: View {
    var body: some View {
       
        HStack(spacing: 20){
            
            VStack(spacing: 10){
                
                
                Image(systemName: "person.fill.badge.plus")
                    .renderingMode(.original)
                // rendermode에서 original 선택, 실제컬러->멀티컬러로 변경.
                // 즉, 고유값 컬러로 변경됨 == 변경되지 않는 컬러값이 된다.
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                
                
                Image(systemName: "person.fill.badge.plus")
                    .renderingMode(.template) // temlpate -> 변경됨
                    .resizable()
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                
                Image(systemName: "person.fill.badge.plus")
                    .renderingMode(.original) // none -> 변경 안됨
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                
                
            }
            
            
            
            
            
            VStack(spacing: 10){
                
                
                Image(systemName: "bolt.badge.clock.fill")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit() //scaled to fit
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                
                
                Image(systemName: "bolt.badge.clock.fill")
                    .renderingMode(.template) // temlpate -> 변경됨
                    .resizable()
                    .scaledToFill() // scaled to fill
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                
                Image(systemName: "bolt.badge.clock.fill")
                    .renderingMode(.none) // none -> 변경 안됨
                    .resizable()
                    //scaledToXX 설정 안하면 비율 달라짐!!
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                
        
                
            }
            
            
            
            
        }
    }
}

struct __Icon_Previews: PreviewProvider {
    static var previews: some View {
        __Icon()
    }
}
