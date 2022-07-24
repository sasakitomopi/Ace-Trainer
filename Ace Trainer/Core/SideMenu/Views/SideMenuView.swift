//
//  SideMenuView.swift
//  Ace Trainer
//
//  Created by user on 2022/07/17.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("userFullName")
                        .font(.headline)
                    
                    Text("userName")
                        .foregroundColor(.gray)
                        .font(.caption)
                    
                    UserStatusView()
                        .padding(.vertical)
                }
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases,id: \.rawValue){ viewModel in
                if viewModel == .profile {
                    NavigationLink{
                        //ProfileView()
                    }label: {
                        SideMenuRowView(viewModel: viewModel)
                    }
                }else if (viewModel == .logout){
                    Button {
                        //logout
                    } label: {
                        SideMenuRowView(viewModel: viewModel)
                    }
                }else {
                    SideMenuRowView(viewModel: viewModel)
                }
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
