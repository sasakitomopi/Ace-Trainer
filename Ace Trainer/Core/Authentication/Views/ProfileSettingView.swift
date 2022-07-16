/*
 *  プロファイル設定画面
 *  ProfileSettingView
 
 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct ProfileSettingView: View {
    @State private var name = ""
    @State private var jobs = ""
    @State private var sports = ""
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Edit", title2: "Account Settings")
                .clipShape(RoundedShape(corners: .bottomRight))
            
            VStack(alignment: .leading,spacing: 30){
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .foregroundColor(Color(.darkGray))
                    .frame(width: 50, height: 50)


                Text("Name")
                    .font(.headline)
                TextField("Type your name",text: $name)
                
                Text("Jobs")
                    .font(.headline)
                TextField("Type your jobs",text: $jobs)
                
                Text("Sports")
                    .font(.headline)
                TextField("Type your sport",text: $sports)
                
                Text("Skill")
                    .font(.headline)
                TextArea(text: $caption, placeholder: "Type your skills")
            }
            .padding()
            
            HStack{
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
                Spacer()
                
                Button {
                    //done
                } label: {
                    Text("Complete")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                }
            }
            .padding(20)
        }
        .ignoresSafeArea()
    }
}

struct ProfileSettingView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingView()
    }
}
