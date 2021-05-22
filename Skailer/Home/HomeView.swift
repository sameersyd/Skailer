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
                    HomeHeaderView(headerStr: viewModel.headerStr)
                    // Playlists
                    HomePlaylistView(playlists: viewModel.playlists)
                    // Recently Played
                    HomeRecentlyPlayedView(recentlyPlayed: viewModel.recentlyPlayed)
                    // Made for You
                    HomeMadeForView()
                    
                    Spacer().frame(height: 150)
                    Spacer()
                }
            }.animation(.spring()).edgesIgnoringSafeArea([.horizontal, .bottom])
        }
    }
}


fileprivate struct HomeHeaderView: View {
    let headerStr: String
    var body: some View {
        HStack(alignment: .center) {
            Text(headerStr).foregroundColor(.text_header)
                .modifier(FontModifier(.black, size: 28))
            Spacer()
            Button(action: {  }) {
                Image.search.resizable().frame(width: 16, height: 16)
                    .padding(12).background(Color.primary_color)
                    .cornerRadius(20).modifier(NeuShadow())
            }
        }.padding(.top, 12).padding(.horizontal, 16)
    }
}

fileprivate struct HomePlaylistView: View {
    let playlists: [MusicModel]
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Your Playlist").foregroundColor(.text_header)
                .modifier(FontModifier(.bold, size: 20)).padding(.leading, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<playlists.count, id: \.self) { i in
                        Button(action: {  }, label: {
                            PlaylistView(name: playlists[i].name,
                                         artistName: playlists[i].artistName,
                                         coverImage: playlists[i].coverImage)
                        }).padding(.top, 6).padding(.bottom, 40)
                    }
                }.padding(.horizontal, 16)
            }
        }.padding(.top, 36)
    }
}

fileprivate struct HomeRecentlyPlayedView: View {
    let recentlyPlayed: [MusicModel]
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Recently Played").foregroundColor(.text_header)
                .modifier(FontModifier(.bold, size: 20)).padding(.leading, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<recentlyPlayed.count, id: \.self) { i in
                        Button(action: {  }, label: {
                            MusicDiscView(name: recentlyPlayed[i].name,
                                          artistName: recentlyPlayed[i].artistName,
                                          coverImage: recentlyPlayed[i].coverImage)
                        }).padding(.top, 6).padding(.bottom, 40)
                    }
                }.padding(.horizontal, 16)
            }
        }
    }
}

fileprivate struct HomeMadeForView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Made for You").foregroundColor(.text_header)
                .modifier(FontModifier(.bold, size: 20))
                .padding(.leading, 16)
            Button(action: {  }, label: {
                MadeForView()
            }).padding([.horizontal, .top], 16).padding(.bottom, 40)
        }
    }
}
