//
//  SplashScreen.swift
//  myRecipe
//
//  Created by Gia Hân on 04/09/2023.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isShowingHomeView = false
    @State private var size = 0.4
    @State private var opactity = 0.2
    
    var body: some View {
        if isShowingHomeView{
            HomeView()
        } else {
            VStack {
                VStack{
                    Text("myRecipe")
                        .font(.system(size: 50))
                        .bold()

                }
                .scaleEffect(size)
                .opacity(opactity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.5)){
                        size = 0.9
                        opactity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        isShowingHomeView = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
