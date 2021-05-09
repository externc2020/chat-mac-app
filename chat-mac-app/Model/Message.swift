//
//  Message.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import Foundation

struct Message: Identifiable {
    var id: Int
    var content: String
//    var username: String
//    var date: String
}

let defaultMessges = [
    Message(id: 1,content: "hello justin, hello fasdfasfasdfasf"),
    Message(id: 2,content: "hello justin"),
    Message(id: 3,content: "hello justin,dsfasdfasd"),
    Message(id: 4,content: "hello justin 12312sada"),
]
