//
//  HomeViewModel.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var headerStr = "Hello Sameer 👋🏻"
    @Published private(set) var playlists = [MusicModel]()
    @Published private(set) var recentlyPlayed = [MusicModel]()
    
    @Published private(set) var selectedMusic: MusicModel? = nil
    @Published var displayPlayer = false
    
    init() {
        fetchPlaylist()
        fetchRecentlyPlayed()
    }
    
    private func fetchPlaylist() {
        playlists = Data.getPlaylists()
    }
    
    private func fetchRecentlyPlayed() {
        recentlyPlayed = Data.getRecentlyPlayed()
    }
    
    func selectMusic(music: MusicModel) {
        selectedMusic = music
        displayPlayer = true
    }
}
