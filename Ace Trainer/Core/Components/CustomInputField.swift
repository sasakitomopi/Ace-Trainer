/*
 *  入力フィールドのオブジェクト
 *  第1引数:systemName
 *  第2引数:placeholder
 *  第3引数:入力値を表示するか否かをチェックする真偽値
 *  第4引数:入力値

 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct CustomInputField : View {
    let imageName : String
    let placeholderText : String
    var isSecureField : Bool?
    @Binding var text : String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                if(isSecureField ?? false){
                    SecureField(placeholderText,text: $text)
                }else{
                    TextField(placeholderText,text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}
