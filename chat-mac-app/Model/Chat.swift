//
//  ChatData.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import Foundation

struct Chat: Hashable {
    var title: String
    var lastUpdatedDate: String
    var lastMessage: String
    var imageLabel: String
}

let defaultChatInfos = [
    Chat(title: "CharRoom1", lastUpdatedDate: "20200202", lastMessage: "Hello java", imageLabel: "view1"),
    Chat(title: "CharRoom2", lastUpdatedDate: "20200202", lastMessage: "Hello cpp", imageLabel: "view2"),
    Chat(title: "CharRoom3", lastUpdatedDate: "20200202", lastMessage: "Hello swift", imageLabel: "view3"),
    Chat(title: "CharRoom4", lastUpdatedDate: "20200202", lastMessage: "Hello javascript", imageLabel: "view4"),
];
