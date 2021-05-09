//
//  ChatList.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct ChatList: View {
    var dataSource: [Chat]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(dataSource, id: \.self) { item in
                ChatItem(dataSource: item)
            }
        }
    }
}

struct ChatList_Previews: PreviewProvider {
    static var previews: some View {
        ChatList(dataSource: defaultChatInfos)
    }
}
