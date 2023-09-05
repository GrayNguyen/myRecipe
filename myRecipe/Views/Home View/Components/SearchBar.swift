//
//  SearchBar.swift
//  myRecipe
//
//  Created by Gia Hân on 04/09/2023.
//

import SwiftUI

struct SearchBar: View {
    @State private var text: String = ""
    
    func search(){
        
    }
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("ForegroundColor"))
                .font(.system(size: 28))
                .bold()
            
            TextField(
                "Search any recipes",
                text: $text
            )
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("BackgroundColor"))
            )
            .onSubmit {
                search()
            }
            .foregroundColor(Color("ForegroundColor"))
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
        }
        .padding(.horizontal,16)
        .background(RoundedRectangle(cornerRadius: 30).fill(Color("BackgroundColor")))
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            SearchBar()
            Spacer()
        }
        .background(.gray.opacity(0.2))
    }
}
