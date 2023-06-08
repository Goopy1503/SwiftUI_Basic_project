//
//  nothing3.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/06/08.
//

import SwiftUI

struct nothing3: View {
    @State private var firstIsPresented = false
        
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Button {
                    self.firstIsPresented.toggle()
                    
                } label: {
                    CircleButton()
                        
                }
                .scaleEffect(firstIsPresented ? 1 : 0.7)
                Spacer()
            }
            .sheet(isPresented: $firstIsPresented) {
                Text("Only the second modal view works!")
                    .presentationDetents([.medium, .large])
            }
                
            }//】 Navigation
    }//】 Body
}

struct nothing3_Previews: PreviewProvider {
    static var previews: some View {
        nothing3()
    }
}
