//
//  ChatSearchBar.swift
//  JSignal
//
//  Created by justin on 2021/5/7.
//

import SwiftUI

struct ChatSearchBar: View {
    @State private var keyword: String = ""
    @State private var isEditing: Bool = false
    
    func sendMessage () {
        print(keyword)
    }

    var body: some View {
        GeometryReader { geometry in
            HStack() {
                TextField(
                    "Given Name",
                    text: $keyword)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .frame(width: geometry.size.width * 0.8, height: geometry.size.height)
                
                Button(action: {
                    print("Search chat room")
                }, label: {
                    Text("Search")
                })
                .buttonStyle(BorderedButtonStyle())
//                .frame(width: geometry.size.width * 0.2, height: geometry.size.height)
                
            }
        }
        .background(Color.white)
    }

}

struct ChatSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ChatSearchBar()
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    @Binding var focused: Bool
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
//            .background(Rectangle().stroke(Color.white))
    }
}
