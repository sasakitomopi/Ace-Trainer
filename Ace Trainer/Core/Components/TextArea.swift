//
//  TextArea.swift
//  Ace Trainer
//
//  Created by user on 2022/07/16.
//

import SwiftUI

struct TextArea: View {
    @Binding var text : String
    let placeholder : String

    var body: some View {
        VStack(alignment: .leading){
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal,8)
                    .padding(.vertical,12)
            }
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}

struct TextArea_Previews: PreviewProvider {
    static var previews: some View {
        TextArea(text: .constant(""), placeholder: "")
    }
}
