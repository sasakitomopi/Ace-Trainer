//
//  UserStatusView.swift
//  Ace Trainer
//
//  Created by user on 2022/07/17.
//

import SwiftUI

struct UserStatusView: View {
    var body: some View {
        HStack(spacing: 12){
            HStack(spacing: 4) {
                Text("2")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 4) {
                Text("6.9M")
                    .font(.subheadline)
                    .bold()
                
                Text("Follwers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatusView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatusView()
    }
}
