/*
 *  TweetFilterの列挙型を定義
 *
 *  CaseIterable
 *  allCaseメソッドを使ってForEachを回すために定義
 
 *  Int
 *  ForEachでidに紐づく値(rawValue)を取得する必要があるため定義
 *
 *  @version 1.0
 *  @author tsasaki
 */

import Foundation

enum TweetFileterViewModel : Int , CaseIterable{
    case tweets
    case replies
    case likes
    
    var title : String {
        switch self {
        case .tweets :
            return "Tweets"
        case .replies :
            return "Replies"
        case .likes :
            return "Likes"
        }
    }
}
