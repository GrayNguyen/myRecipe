//
//  NavigationBar.swift
//  myRecipe
//
//  Created by Gia Hân on 04/09/2023.
//

import SwiftUI

struct TabBar: View {
    @State private var isShowingHomeView: Bool = false
    @State private var isShowingFavouriteView: Bool = false
    @State private var isShowingMyRecipeView: Bool = false
    @State private var isShowingSettingView: Bool = false
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        HStack{
            NavigationLink(
                destination: HomeView(),
                isActive: $isShowingHomeView) {
                    TabBarButton(animation: animation, image: "house.fill", selectedTab: $selectedTab, flag: $isShowingHomeView)
                }
            
            Spacer()
            
            NavigationLink(
                destination: FavouriteView(),
                isActive: $isShowingFavouriteView) {
                    TabBarButton(animation: animation, image: "heart.fill", selectedTab: $selectedTab, flag: $isShowingFavouriteView)
                }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("BackgroundColor"))
                    .padding(25)
                    .background(Color("PrimaryColor"))
                    .clipShape(Circle())
            }
            .offset(y: -35)


            Spacer()
            
            NavigationLink(
                destination: MyRecipeView(),
                isActive: $isShowingMyRecipeView) {
                    TabBarButton(animation: animation, image: "list.clipboard.fill", selectedTab: $selectedTab, flag: $isShowingMyRecipeView)
                }
            
            Spacer()
            
            NavigationLink(
                destination: SettingView(),
                isActive: $isShowingSettingView) {
                    TabBarButton(animation: animation, image: "gearshape.fill", selectedTab: $selectedTab, flag: $isShowingSettingView)
                }
        }
        .padding(.top)
        .padding(.horizontal, 10)
        .padding(.vertical, -15)
        .background(Color("BackgroundColor"))
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            
            TabBar(selectedTab: .constant("house.fill"))
        }
        .background(Color.gray.opacity(0.2))
    }
}
