/*
 *  新規登録画面
 *  Firebaseを使って会員情報を新規登録
 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""

    var body: some View {
        VStack{
            AuthHeaderView(title1: "Get started", title2: "Create Account")
            VStack(spacing: 40){
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomInputField(imageName: "person", placeholderText: "UserName", text: $username)
                CustomInputField(imageName: "person", placeholderText: "Full Name", text: $fullname)
                CustomInputField(imageName: "lock", placeholderText: "PassWord", isSecureField : true , text: $password)
            }
            .padding(32)
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
            }
            .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 0, y: 0)

            Spacer()
            
            Button {
                
            } label: {
                HStack(){
                    Text("Already hava an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
