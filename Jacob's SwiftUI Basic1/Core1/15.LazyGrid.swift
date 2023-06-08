//
//  15.LAzyGrid.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/08.
//

import SwiftUI

struct _5_LAzyGrid: View {
    
    // LazyVGrid
    // columns 의 갯수를 3개로 설정
    let 기둥: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil ),
        GridItem(.flexible(), spacing: 6, alignment: nil ),
        GridItem(.flexible(), spacing: 6, alignment: nil )
    ]
    
    
    // LazyHGrid
    // title을 1000개 변수를 생성
    // ex) ["목록1", "목록2", .... "목록1000"] [String]
    let 해시태그: [String] = Array(1...1000).map{"# \($0)번"}  // $0 -> 1부터 1000까지 각각 대입
    
    // 화면 그리드 형식으로 채워줌
    let 열: [GridItem] = [
        GridItem(.flexible(maximum: 80))
    ]
    
    
    // 바디 시작!
    var body: some View {
        
        // 1. LazyVGrid
        ScrollView(.vertical, showsIndicators: false) {
            
            
            ZStack{
                
                // Hero 부분 (위에 사진 부분)
                Rectangle()
                    .fill(Color.gray.opacity(0.4))
                    .frame(height: 400)
            
                // LazyHGrid
                //ScrollView horizontal
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: 열, spacing: 10)
                    {
                        ForEach(해시태그, id:\.self){ item in
                                ZStack{
                                    Capsule()
                                        .fill(Color.white)
                                        .frame(height: 30)
                                    Text(item)
                                        .padding(20)
                                }//】 ZStack
                        }//: ForEach
                    } //: LazyHGrid
                }// : ScrollView 끝
            } //: ZStack끝
            
            // 섹션 부분
            LazyVGrid(
                columns: 기둥,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders])       // 헤더 부분 고정!!
            {
                //섹션1
                Section(header: Text(" 섹션 1 ")
                    .padding(5)
                    .foregroundColor(.pink)
                    .fontWeight(.semibold)
                    .fontDesign(.serif)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.gray.opacity(0.5), radius: 5)
                    .padding()
                ){
                    //반복문으로 VGrid 안에 내용물 넣기
                    ForEach(0..<24) {순서 in
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.gray.opacity(0.5), radius: 5)
                            .frame(height: 130)
                            .overlay( Text("\(순서)"))
                    }
                } //: Section 1
                
                
                // 섹션2
                Section(header: Text(" 섹션 2 ")
                    .padding(5)
                    .foregroundColor(.pink)
                    .fontWeight(.semibold)
                    .fontDesign(.serif)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.gray.opacity(0.5), radius: 5)
                    .padding()
                ){
                    //반복문으로 VGrid 안에 내용물 넣기
                    ForEach(0..<24) {순서 in
                        Rectangle()
                            .fill(Color.pink.opacity(0.1))
                            .cornerRadius(10)
                            .shadow(color: Color.gray.opacity(0.5), radius: 5)
                            .frame(height: 130)
                            .overlay( Text("\(순서)"))
                    }
                    
                } // : Section 2
            } // : LazyVGrid 끝
        } // : ScrollView 끝
        
        
        
        
    }
    
    
    
    struct _5_LAzyGrid_Previews: PreviewProvider {
        static var previews: some View {
            _5_LAzyGrid()
        }
    }
}
