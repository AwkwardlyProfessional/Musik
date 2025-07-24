//
//  PlayerViewModel.swift
//  Musik
//
//  Created by Arijit Vishwakarma on 24/07/25.
//

import Foundation

class PlayerViewModel: ObservableObject {
    
    let model: MusicModel
    
    @Published var liked = true
    @Published var slider: Double = 30
    @Published var isPlaying = true
    
    init(model: MusicModel) {
        self.model = model
    }
}
