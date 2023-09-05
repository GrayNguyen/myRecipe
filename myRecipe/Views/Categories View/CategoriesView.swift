//
//  CategoriesView.swift
//  myRecipe
//
//  Created by Gia Hân on 05/09/2023.
//

import SwiftUI

struct CategoriesView: View {
    @Binding var selectedTab: String
    
    var body: some View {
        VStack {
            SearchBar()
                .padding(.horizontal, 15)

            HStack(alignment: .top, spacing: 20){
                Spacer()
                
                VStack(alignment: .leading){
                    Text("Categories")
                        .font(.title2)
                        .bold()

                    ForEach(0..<Category.categories.count, id: \.self) { index in
                        if index % 2 == 0 {
                            CategoriesButton(category: Category.categories[index], width: 180.0)
                                .padding(.bottom, 10)
                        }
                    }
                }

                VStack {
                    ForEach(0..<Category.categories.count, id: \.self) { index in
                        if index % 2 == 1{
                            CategoriesButton(category: Category.categories[index], width: 180.0)
                                .padding(.bottom, 10)
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.top, 20)
            
            Spacer()
            
            TabBar(selectedTab: $selectedTab)
        }
        .background(Color.gray.opacity(0.2))
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(selectedTab: .constant("house.fill"))
    }
}
