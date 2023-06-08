//
//  notiong2.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/05/08.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    case first, second
    
    var id: Int {
        hashValue
    }
}

struct nothing2: View {
    @State var activeSheet: ActiveSheet?
    
    var body: some View {
        VStack {
            Button {
                activeSheet = .first
            } label: {
                CircleButton(buttonColor: .red, buttonText: "first")
                    .frame(width: 30, height: 30)
            }
            
            Button {
                activeSheet = .second
            } label: {
                CircleButton(buttonColor: .blue, buttonText: "second")
            }
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
                
            }
        }//】 Sheet
    }//】 Body
}
    
    struct nothing2_Previews: PreviewProvider {
        static var previews: some View {
            nothing2()
        }
    }
