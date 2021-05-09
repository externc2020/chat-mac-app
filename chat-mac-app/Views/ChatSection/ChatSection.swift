//
//  ChatSection.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct ChatSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            ChatSearchBar()
            ChatList(dataSource: defaultChatInfos)
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
        .background(Color.white)
        .padding(.trailing, 10)
    }
}

struct ChatSection_Previews: PreviewProvider {
    static var previews: some View {
        ChatSection()
    }
}

