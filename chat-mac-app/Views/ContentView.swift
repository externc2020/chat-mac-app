//
//  ContentView.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            ChatSection()
            SendSection()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
