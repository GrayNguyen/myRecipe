//
//  HomeView.swift
//  myRecipe
//
//  Created by Gia Hân on 04/09/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: String = "house.fill"
    @State private var isShowingCategories: Bool = false
    
    var body: some View {
        //
        NavigationStack {
            VStack{
                VStack{
                    //MARK: Slogan
                    HStack{
                        VStack{
                            HStack{
                                Text("Hello, Long")
                                    .padding(.leading, 10)
                                    .padding(.bottom, 10)
                                
                                Spacer()
                            }
                            
                            Text("What would you like \nto cook today?")
                                .font(.system(size: 32))
                                .bold()
                        }
                        
                        Spacer()
                        
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)
                    }
                    
                    VStack(spacing: 40){
                        //MARK: Search bar
                        SearchBar()
                        
                        VStack{
                            //MARK: Categories
                            HStack{
                                Text("Categories")
                                    .font(.system(size: 24))
                                    .bold()
                                
                                Spacer()
                                
                                NavigationLink(
                                    destination: CategoriesView(selectedTab: $selectedTab),
                                    isActive: $isShowingCategories){
                                        Button {
                                            isShowingCategories = true
                                        } label: {
                                            Text("See all")
                                                .foregroundColor(Color("PrimaryColor"))
                                                .bold()
                                        }
                                }
                                
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(Category.categories) { category in
                                        CategoriesButton(category: category, width: 130)
                                    }
                                }
                                .padding(.leading, 1)
                                .padding(.vertical,2)
                            }
                        }
                        
                        //MARK: Recommandation
                        VStack(spacing: 10){
                            HStack{
                                Text("Recomendation")
                                    .font(.system(size: 24))
                                    .bold()
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Text("See all")
                                        .foregroundColor(Color("PrimaryColor"))
                                        .bold()
                                }
                            }
                        }
                        
                        //MARK: Recipes of the week
                        VStack(spacing: 10){
                            HStack{
                                Text("Recipes Of The Week")
                                    .font(.system(size: 24))
                                    .bold()
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Text("See all")
                                        .foregroundColor(Color("PrimaryColor"))
                                        .bold()
                                }
                            }
                        }
                        
                        //MARK: Recently viewed
                        VStack(spacing: 10){
                            HStack{
                                Text("Recently Viewed")
                                    .font(.system(size: 24))
                                    .bold()
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Text("See all")
                                        .foregroundColor(Color("PrimaryColor"))
                                        .bold()
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 15)

                
                Spacer()
                
                TabBar(selectedTab: $selectedTab)
            }
            .background(Color.gray.opacity(0.2))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
