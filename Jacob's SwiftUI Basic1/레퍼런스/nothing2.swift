//
//  notiong2.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/05/08.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    case first, second, thrid
    
    var id: Bool {
        (hashValue != 0)
    }
}

struct nothing2: View {
    @State var activeSheet: ActiveSheet?
    
    var body: some View {
        
        VStack{
            HStack {
                /// 버튼1
                Button {
                    activeSheet = .first
                } label: {
                    CircleButton(buttonColor: .red, buttonText: "first")
                }//】 Button
                .scaleEffect(activeSheet == .first ? 1 : 0.7)
                
                /// 버튼2
                Button {
                    activeSheet = .second
                } label: {
                    CircleButton(buttonColor: .blue, buttonText: "second")
                }//】 Button
                .scaleEffect(activeSheet == .second ? 1 : 0.7)
                
                /// 버튼3
                Button {
                    activeSheet = .thrid
                } label: {
                    CircleButton(buttonColor: .yellow, buttonText: "thrid")
                }//】 Button
                .scaleEffect(activeSheet == .thrid ? 1 : 0.7)
                
                
            }//】 HStack
            Spacer()
        }//】 VStack
        .sheet(item: $activeSheet) { item in
            switch item {
                
            case .first:
                FirstView()
                    .presentationDetents([.medium, .large])
            case .second:
                SecondView()
                    .presentationDetents([.medium, .large])
                
            case .thrid:
                SecondView()
                    .presentationDetents([.medium, .large])
                
            }
        }//】 Sheet
        
        
        
   
        
        
    }//】 Body
}
    
    struct nothing2_Previews: PreviewProvider {
        static var previews: some View {
            nothing2()
        }
    }
