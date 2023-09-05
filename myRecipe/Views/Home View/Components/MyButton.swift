//
//  SwiftUIView.swift
//  myRecipe
//
//  Created by Gia Hân on 04/09/2023.
//

import SwiftUI

struct MyButton: View {
    var backgroundColor: Color
    var foregroundColor: Color
    var icon: String
    var iconSize: CGFloat
    var buttonSize: CGFloat
    
    var body: some View {
        Image(systemName: icon)
            .foregroundColor(foregroundColor)
            .font(.system(size: iconSize))
            .bold()
            .background(Circle()
                            .fill(backgroundColor)
                            .frame(width: buttonSize, height: buttonSize))
    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(backgroundColor: .gray.opacity(0.4), foregroundColor: .white,icon: "magnifyingglass",iconSize: 32, buttonSize: 50.0)
    }
}
