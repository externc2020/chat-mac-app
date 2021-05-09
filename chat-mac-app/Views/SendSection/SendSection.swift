//
//  SendSection.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct SendSection: View {
    var body: some View {
        GeometryReader { geomerty in
            VStack{
                SendMessage(dataSource: defaultMessges)
                    .frame(width: geomerty.size.width, height: geomerty.size.height * 0.7)
                SendInput()
                    .frame(width: geomerty.size.width, height: geomerty.size.height * 0.3)
            }
            .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SendSection_Previews: PreviewProvider {
    static var previews: some View {
        SendSection()
    }
}
