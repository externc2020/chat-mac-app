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
    
    var body: some View {
        HStack() {
            TextField("Share your happiness", text: $message)
                .frame(height: 60)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.leading, .trailing], 4)
                .overlay(Rectangle().stroke(Color.gray))
            
            Button("Send", action: self.sendMessage)
                .buttonStyle(PlainButtonStyle())
                .font(.title2)
                .frame(width: 80, height: 60)
                .foregroundColor(.white)
                .background(Color.blue)
                
        }
        .background(Color.white)
    }
    
    func sendMessage() {
        print(self.message)
    }
}

struct SendInput_Previews: PreviewProvider {
    static var previews: some View {
        SendInput()
    }
}
