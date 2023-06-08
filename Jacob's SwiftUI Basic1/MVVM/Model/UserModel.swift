//
//  UserModel.swift
//  Jacob's SwiftUI Basic1
//
//  Created by Koo on 2023/04/15.
//

import Foundation

struct UserModel : Identifiable {  // -> 뒤에 id 값 나와야함
    let id: String = UUID().uuidString // -> UUID 초기화 , String 타입으로 리턴 (고유의 코드명 부여)
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
// 대부분 Model의 형태, 구조 비슷

// UserModel 이라는 타입을 선언(?). = String 타입, Int 타입


