//
//  PlayerViewModel.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import Foundation

class PlayerViewModel: ObservableObject {
    
    let model: MusicModel
    
    @Published var liked = true
    
    init(model: MusicModel) {
        self.model = model
    }
}
