//
//  TabBarButton.swift
//  myRecipe
//
//  Created by Gia Hân on 05/09/2023.
//

import SwiftUI

struct TabBarButton: View {
    var animation: Namespace.ID
    var image: String
    @Binding var selectedTab: String
    @Binding var flag: Bool
    
    var body: some View {
        Button {
            withAnimation(.spring()){
                selectedTab = image
                flag.toggle()
            }
        } label: {
            VStack(spacing: 10){
                Image(systemName: image)
                    .foregroundColor(selectedTab == image ? Color("PrimaryColor") : Color("ForegroundColor"))
                    .font(.system(size: 32))
                    .frame(height: 30)
                
                if selectedTab == image{
                    Circle()
                        .fill(Color("PrimaryColor"))
                        .frame(width: 8, height: 8)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                }
            }
        }
        .padding(.top, 10)
    }
}

//struct TabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarButton()
//    }
//}
