/*
 *  ContentView
 *

 *  .onAppearメソッド
 *  Viewが初めて描画されるタイミングで呼び出されるメソッド
 *
 
 *  @version 1.0
 *  @author tsasaki
 */

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    
    var body: some View {
        Group{
            ZStack(alignment: .topLeading){
                MainTabView()
                    .navigationBarHidden(showMenu)

                if showMenu {
                    ZStack{
                        Color.black.opacity(0.25)
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showMenu = false
                        }
                    }
                    .ignoresSafeArea()
                }
                SideMenuView()
                    .frame(width: 300)
                    .background(showMenu ? Color.white : Color.clear)
                    .offset(x: showMenu ? 0 : -300, y: 0)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
//            .onAppear {
//                showMenu = false
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
