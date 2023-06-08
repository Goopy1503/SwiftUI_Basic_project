//
//  25.TransitionBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/10.
//

import SwiftUI

struct _5_TransitionBasic: View {
    
    //property
    @State var condition :Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        condition.toggle()
                    }
                } label: {
                    Text("Button")
                        .font(.title)
                }
                
                Spacer()

            }
            
            
            if condition {
                RoundedRectangle(cornerRadius: 40)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                        // 각 디바이스.메인.바운더리.높이 * 절반
                    .foregroundColor(Color.white)
                    .shadow(color: Color.gray.opacity(0.4), radius: 15, y: -10)
                    .opacity(condition ? 1.0 : 0.0)
                
                
                    // 트렌지션 : move, opacity, scale, asymmetric
//                    .transition(.move(edge: .bottom))
//                    .transition(.opacity)
//                    .transition(.scale)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing))
                    )
            }
            
        }.ignoresSafeArea(edges: .bottom)
    }
}

struct _5_TransitionBasic_Previews: PreviewProvider {
    static var previews: some View {
        _5_TransitionBasic()
    }
}
