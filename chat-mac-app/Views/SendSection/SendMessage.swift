//
//  SendMessage.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI


struct SendMessage: View {
    var dataSource: [Message]
    
    var body: some View {
        HStack {
            ScrollView {
                VStack (alignment: .leading) {
                    ForEach(dataSource, id: \.id) {item in
                        Text(item.content)
                            .font(.body)
                            .padding(.bottom, 5)
                    }
                }
            }
            Spacer()
        }
        .background(Color.white)
        
    }
}

struct SendMessage_Previews: PreviewProvider {
    static var previews: some View {
        SendMessage(dataSource: defaultMessges)
    }
}
