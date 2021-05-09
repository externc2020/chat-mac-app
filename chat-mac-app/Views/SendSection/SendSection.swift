//
//  SendSection.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct SendSection: View {
    var body: some View {
        VStack{
            SendMessage(dataSource: defaultMessges)
            SendInput()
        }
        .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
    }
}

struct SendSection_Previews: PreviewProvider {
    static var previews: some View {
        SendSection()
    }
}
