//
//  HomeViewModel.swift
//  Musik
//
//  Created by Arijit Vishwakarma on 24/07/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var headerStr = "Hello Arjit 👋🏻"
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
