//
//  SendInput.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct SendInput: View {
    @State private var columnInput: Bool = false
    
    @State private var message: String = ""
    
    func sendMessage() {
        print(self.message)
    }
    
    var body: some View {
        HStack(alignment: .top) {
            TextEditor(text: $message)
                .foregroundColor(Color.black)
                .font(.custom("HelveticaNeue", size: 18))
                .lineSpacing(5)
            Button("Send", action: self.sendMessage)
                
        }
    }
}

struct SendInput_Previews: PreviewProvider {
    static var previews: some View {
        SendInput()
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
//            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2))
    }
}
