/*
 *  TweetRowView
 *  ツイートのレイアウトを設定するためのView
 
 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            //user info & tweet caption
            VStack(alignment: .leading , spacing: 4){
                HStack{
                    //profileImage
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading,spacing: 5){
                        HStack{
                            Text("Tomohiro Sasaki")
                                .font(.subheadline.bold())
                            
                            Text("@tsasaki")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                            Text("2w")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        //tweet caption
                        Text("I'm a iOS Developer")
                            .font(.subheadline)
                    }
                }
            }
            
            //action buttons
            HStack{
                Button {
                    //
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "person.2.wave.2")
                }

            }
            .padding()
            .foregroundColor(Color.gray)
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
