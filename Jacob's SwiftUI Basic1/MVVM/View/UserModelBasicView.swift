//
//  UserModelBasicView.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/15.
//

import SwiftUI

struct UserModelBasicView: View {
    
    //property
    // users는 UserModel 타입이다. -> 선언
    @State var users: [UserModel] = [
        
        UserModel(displayName: "철수",
                  userName: "철수123",
                  followerCount: 100,
                  isChecked: true),
        
        UserModel(displayName: "영희",
                  userName: "영원희",
                  followerCount: 55,
                  isChecked: false),
        
        UserModel(displayName: "태일",
                  userName: "9_taeil",
                  followerCount: 182,
                  isChecked: true),
        
        UserModel(displayName: "성길",
                  userName: "임찡찌",
                  followerCount: 180,
                  isChecked: false)
    ]
    
    var body: some View {
        NavigationView{
            
            List{
                // id값 Model에서 이미 고유값으로 생성됐음 (UUID)
                ForEach(users){ User in // id:\.self -> 쓸 필요 없음
                    
                    HStack(spacing: 20){
                        // 사진
                        Circle()
                            .frame(width: 45, height: 45)
                        // 이름
                        VStack(alignment: .leading, spacing: 5) {
                            Text(User.displayName)
                                .font(.headline)
                                
                            Text("@\(User.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                                
                        }//: VStack
                            
                        // 인증마크
                        if User.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(Color.blue)
                        }// : 인증마크
                        Spacer()
                        
                        // 팔로워
                        VStack{
                            Text("\(User.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }//: 팔로워
                        
                    }//: HStack
                    .padding(.vertical, 5)
                    
                }//: Loop
                
            }//: List
            .navigationTitle("회원 리스트")
            .navigationBarTitleDisplayMode(.automatic)
            
        }//: Navigation
    }
}

struct UserModelBasicView_Previews: PreviewProvider {
    static var previews: some View {
        UserModelBasicView()
    }
}
