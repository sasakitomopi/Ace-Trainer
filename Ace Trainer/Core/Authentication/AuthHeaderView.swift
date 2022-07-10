//
//  AuthHeaderView.swift
//  Ace Trainer
//
//  Created by user on 2022/07/10.
//

import SwiftUI

struct AuthHeaderView: View {
    var title1 : String
    var title2 : String

    var body: some View {
        VStack(alignment: .leading){
            //画面を左寄せ
            HStack{
                Spacer()
            }
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(.blue)
        .foregroundColor(.white)
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Start", title2: "Ace Trainer")
    }
}
