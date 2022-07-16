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
    
    var body: some View {
        VStack{
            HStack(spacing: 10){
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                TextField("name",text: $name)
            }
            .padding()

            VStack(alignment: .leading,spacing: 12){
                Text("■ Jobs")
                    .font(.headline)
                TextField("Type your jobs",text: $jobs)
            
                Text("■ Sports")
                    .font(.headline)
                TextField("Type your sport",text: $sports)
                
                Text("■ Skill")
                    .font(.headline)
                TextArea(text: $caption, placeholder: "Type your skills")
            }
            .padding()
        }
    }
}

struct ProfileSettingView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingView()
    }
}
