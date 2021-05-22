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
                VStack(alignment: .leading, spacing: 0) {
                    
                    // Header
                    HStack(alignment: .center) {
                        Text(viewModel.headerStr).foregroundColor(.text_header)
                            .modifier(FontModifier(.black, size: 28))
                        Spacer()
                        Button(action: {  }) {
                            Image.search.resizable().frame(width: 16, height: 16)
                                .padding(12).background(Color.primary_color)
                                .cornerRadius(20).modifier(NeuShadow())
                        }
                    }.padding(.top, 12).padding(.horizontal, 16)
                    
                    // Playlists
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Your Playlist").foregroundColor(.text_header)
                            .modifier(FontModifier(.bold, size: 20))
                            .padding(.leading, 16)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<viewModel.playlists.count, id: \.self) { i in
                                    Button(action: {  }, label: {
                                        PlaylistView(name: viewModel.playlists[i].name,
                                                         artistName: viewModel.playlists[i].artistName,
                                                         coverImage: viewModel.playlists[i].coverImage)
                                    }).padding(.top, 6).padding(.bottom, 40)
                                }
                            }.padding(.horizontal, 16)
                        }
                    }.padding(.top, 36).animation(.spring())
                    
                    // Recently Played
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Recently Played").foregroundColor(.text_header)
                            .modifier(FontModifier(.bold, size: 20))
                            .padding(.leading, 16)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<viewModel.recentlyPlayed.count, id: \.self) { i in
                                    Button(action: {  }, label: {
                                        MusicDiscView()
                                    }).padding(.top, 6).padding(.bottom, 40)
                                }
                            }.padding(.horizontal, 16)
                        }
                    }.padding(.top, 36).animation(.spring())
                    
                    Spacer().frame(height: 150)
                    Spacer()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
