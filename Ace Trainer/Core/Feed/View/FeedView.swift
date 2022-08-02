//
//  FeedView.swift
//  Ace Trainer
//
//  Created by user on 2022/07/17.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack{
            ScrollView {
                LazyVStack {
                    ForEach(1 ..< 10) { tweets in
                        PostRowView()
                            .padding()
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
