//
//  CopyBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/05/16.
//

import SwiftUI

struct CopyBasic: View {
    @State private var copiedText = ""
    @StateObject var VM = FruitViewModel()

    var body: some View {
        VStack {
            Text(VM.fruitArray[1].name)
                .padding()
                .background(Color.gray)
            
            Button(action: {
                copiedText = VM.fruitArray[1].name
                UIPasteboard.general.string = copiedText
            }) {
                Text("Copy")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct CopyBasic_Previews: PreviewProvider {
    static var previews: some View {
        CopyBasic(VM: FruitViewModel())
    }
}
