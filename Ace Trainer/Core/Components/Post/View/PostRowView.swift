//
//  PostRowView.swift
//  Ace Trainer
//
//  Created by user on 2022/08/01.
//

import SwiftUI

struct PostRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 15){
                Button {
                    //applications View
                } label: {
                    Image("trainer")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width,height: 350)
                }
                HStack(spacing: 10){
                    Text("Ebisu")
                        .font(.subheadline).bold()
                        .frame(width:100, height: 20)
                        .foregroundColor(Color(.systemGray))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 0.75)
                        )
                    Text("陸上競技")
                        .font(.subheadline).bold()
                        .frame(width:100, height: 20)
                        .foregroundColor(Color(.systemGray))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 0.75)
                        )
                }

                VStack(alignment: .leading ,spacing: 10){
                    Button {
                        //applications View
                    } label: {
                        Text("100mのタイムを最大1秒縮める基礎力UPトレーニングしたい人集まれ！！")
                            .font(.title3).bold()
                            .foregroundColor(.black)
                            .lineLimit(1)
                    }
                    
                    Text("【陸上競技】サニブラウンのトレーナーとしても活躍した五味が教える基礎力UPトレーニングをマンツーマンで受けることができます。")
                        .font(.footnote)
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .padding()
            Divider()
        }
    }
}

struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView()
    }
}
