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
                TextEditor(text: $keyword)
                    .foregroundColor(Color.gray)
                    .font(.custom("HelveticaNeue", size: 13))
                
                Button(action: { }, label: {
                    Text("button")
                })
                .frame(width: 90, height: geometry.size.height)
                .background(Color.yellow)
                
            }
        }
        .frame(height: 50)
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
