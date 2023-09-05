//
//  CategoriesButton.swift
//  myRecipe
//
//  Created by Gia Hân on 04/09/2023.
//

import SwiftUI

struct CategoriesButton: View {
    var category: Category
    var width: CGFloat
    
    var body: some View {
        VStack {
            VStack {
                
                Image(category.image)
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Text(category.name)
                    
                    Spacer()
                }
                
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("BackgroundColor"))
            )
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.secondary)
            )
        }
        .frame(width: width, height: 90)
    }
}

struct CategoriesButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesButton(category: Category.categories[0], width: 180.0)
    }
}
