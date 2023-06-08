//
//  27.NavigationViewBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/10.
//

import SwiftUI

struct _7_NavigationViewBasic: View {
    
    
    //property
    @State var 쇼쉿 : Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink {
                    // destination : 목적지 -> 어디로 이동?
                    
                    <#code#>
                } label: {
                    <#code#>
                }

            }
        }
    }
    
}

struct _7_NavigationViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        _7_NavigationViewBasic()
    }
}
