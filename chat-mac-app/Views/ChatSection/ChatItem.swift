//
//  ChatItem.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct ChatItem: View {
    var dataSource: Chat
    
    var body: some View {
        HStack(alignment: .bottom) {
            Image(dataSource.imageLabel)
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                HStack(alignment: .firstTextBaseline) {
                    Text(dataSource.title).font(.title)
                    Text(dataSource.lastUpdatedDate).font(.title3)
                }
                Text(dataSource.lastMessage)
                Spacer()
            }
            Spacer()
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 100, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 50, maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .border(Color.gray)
    }
}

struct ChatItem_Previews: PreviewProvider {
    static var previews: some View {
        ChatItem(dataSource: defaultChatInfos[0])
    }
}
