//
//  PlayerPage.swift
//  ValorantApp
//
//  Created by OmerErbalta on 19.10.2023.
//

import SwiftUI

struct PlayerPageView: View {
    @ObservedObject var playerListViewModel : PlayerListViewModel
    init() {
        self.playerListViewModel = PlayerListViewModel()
    }
    
    var body: some View {
        
        List(playerListViewModel.playerList,id: \.id){player in
            PlayerDetail(player: player)
        }.task {
            await playerListViewModel.downloadPlayerListAsync()
        }
    }
}

#Preview {
    PlayerPageView()
}
