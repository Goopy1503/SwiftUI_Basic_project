//
//  19.StateBasic.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/09.
//


// @ == (Property Wrapper)
// 프로퍼티가 저장되는 방식을 관리하는 코드를 추가 시켜주는것 (코드 재사용 가능)
// 애플이 추가한 프로퍼티 기능을 가져오기 위해 사용

// @State -> (버튼 클릭) 변수가 변경될 때, View에서도 update되면서 값이 변경되기 원할때 사용
//상태가 변하는 뷰를 그릴때
import SwiftUI

struct _9_StateBasic: View {
    
    //property
    @State var BGColor: Color = Color.green  // Color 타입 = 초기값 그린
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var Count: Int = 0
    
    
    var body: some View {
        
        
        VStack{
            
         
            //content
            VStack(spacing: 20) {
                Text("카운트 : \(Count)")
                    .font(.title)
                Text(myTitle)
                    .font(.title3)
                    .foregroundColor(BGColor)
                
            }
            .frame(width: 300, height: 200)
            .background(.white)
            .cornerRadius(15)
            .shadow(color: BGColor , radius: 20)
            
        
            
            VStack{
                
              
                
                HStack(spacing: 100) {
                    
                    // 플러스 버튼
                    Button {
                        //action
                        BGColor = Color.blue
                        myTitle = "+ 버튼 눌림"
                        Count += 1
                    } label: {
                        Text("+")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            .frame(width: 80, height: 80)
                            .background(Color.white)
                            .cornerRadius(50)
                            .shadow(color: Color.blue, radius: 15, y :8)
                    }
                    
                    
                    // 마이너스 버튼
                    Button {
                        //action
                        BGColor = Color.red
                        myTitle = "- 버튼 눌림"
                        Count -= 1
                    } label: {
                        Text("-")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                            .frame(width: 80, height: 80)
                            .background(Color.white)
                            .cornerRadius(50)
                            .shadow(color: Color.red, radius: 15, y :8)
                    }
                    
                    
                    
                }//:HStack 끝
                .padding(.vertical, 50)
                
             
                //리셋 버튼
                Button {
                    //action
                    BGColor = Color.green
                    myTitle = "리셋 버튼 눌림"
                    Count = 0 // 카운트 리셋됨
                } label: {
                    Text("리셋 버튼")
                        .font(.title3)
                        .foregroundColor(.green)
                }
            
            }
                }//: VStack 끝
                
                
        
        }
        
      
    }


struct _9_StateBasic_Previews: PreviewProvider {
    static var previews: some View {
        _9_StateBasic()
    }
}
