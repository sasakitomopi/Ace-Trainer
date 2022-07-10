/*
 *  ログインView
 *  Firebaseを使って会員情報を管理
 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Start", title2: "Ace Trainer")
                .clipShape(RoundedShape(corners: .bottomRight))
            VStack(spacing: 40){
                CustomInputField(imageName: "envelope", placeholderText: "Email",text: $email)
                CustomInputField(imageName: "lock", placeholderText: "Password",isSecureField : true,text: $password)
            }
            .padding(.horizontal,32)
            .padding(.top,44)
            
            HStack{
                Spacer()
                NavigationLink{
                    
                }label: {
                    Text("Forgot password?")
                        .font(.caption)
                        .foregroundColor(Color(.systemBlue))
                        .fontWeight(.semibold)
                }
            }
            .padding(.top)
            .padding(.trailing,24)

            VStack{
                Button {
                    
                } label: {
                    Text("Sign in")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
                Spacer()

            }
            
            VStack{
                NavigationLink{
                    
                }label: {
                    HStack{
                        Text("Dont have account?")
                            .font(.footnote)
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(Color(.systemBlue))
                    .padding(.bottom,32)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
