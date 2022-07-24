/*
 *  ProfileView
 *  プロファイルを表示するためのView
 
 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter : TweetFileterViewModel = .tweets
    @Environment(\.dismiss) var dismiss
    @Namespace private var animation
    
    var body: some View {
        VStack(alignment: .leading){
            headerView
            
            actionButtons
            
            userInfoDetails
            
            tweetFilterBar

            tweetsView
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView : some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack{
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x:16 , y: 10)
                }
                
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 30)
                    .foregroundColor(Color(.darkGray))
            }
        }
        .frame(height: 64)
    }
    
    var actionButtons : some View {
        HStack(spacing: 12){
            Spacer()
            
            Button {
                //Notifications
            } label: {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.black)
                    .padding()
                    .overlay(Circle().stroke(Color.gray,lineWidth: 0.75))
            }
            
            Button {
                //Edit Profiles
            } label: {
                Text("Edit Profiles")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(Color.black
                    )
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 0.75))
            }
        }
        .padding(.trailing)
        .padding(.top)
    }
    
    var userInfoDetails : some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack{
                Text("Tomohiro")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seak.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@tomohiro.sasaki")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("I'm a iOS Developer")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 24) {
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Tokyo Japan")
                }
                
                HStack{
                    Image(systemName: "link")
                    
                    Text("www.tsasaki.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            UserStatusView()
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
    
    var tweetFilterBar : some View {
        HStack{
            ForEach(TweetFileterViewModel.allCases , id: \.rawValue){ item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().foregroundColor(.gray).offset(x:0, y: 16))
    }
    
    var tweetsView : some View {
        ScrollView {
            LazyVStack {
                ForEach(1 ..< 10) { tweets in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}
