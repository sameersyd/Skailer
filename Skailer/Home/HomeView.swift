//
//  HomeView.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.primary_color.edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 36) {
                    HStack(alignment: .center) {
                        Text(viewModel.headerStr).foregroundColor(.text_header)
                            .modifier(FontModifier(.black, size: 28))
                        Spacer()
                        Button(action: {  }) {
                            Image.search.resizable().frame(width: 16, height: 16)
                                .padding(12).background(Color.primary_color)
                                .cornerRadius(20).modifier(NeuShadow())
                        }
                    }.padding(.top, 12)
                    
                    Text("Your Playlist").foregroundColor(.text_header)
                        .modifier(FontModifier(.bold, size: 20))
                    
                    Spacer().frame(height: 150)
                    Spacer()
                }.padding(.horizontal, 16)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
