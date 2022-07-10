/*
 *  カスタムShapeの作成
 *    corners:角丸にする位置
 *  pathメソッド
 *    第1引数:図形の位置
 *  UIBezierPath
 *    図形をReturnするクラス

 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct RoundedShape : Shape {
    var corners : UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners,cornerRadii: CGSize(width: 80, height: 80))

        return Path(path.cgPath)
    }
}
