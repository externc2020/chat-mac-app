//
//  ChatSection.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct ChatSection: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                ChatSearchBar()
                    .frame(height: 40, alignment: .top)
                ChatList(dataSource: defaultChatInfos)
                    .frame(width: geometry.size.width, height: geometry.size.height - 40, alignment: .top)
            }
        }
    }
}

struct ChatSection_Previews: PreviewProvider {
    static var previews: some View {
        ChatSection()
    }
}

