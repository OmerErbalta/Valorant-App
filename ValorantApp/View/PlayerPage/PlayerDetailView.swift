//
//  PlayerDetail.swift
//  ValorantApp
//
//  Created by OmerErbalta on 19.10.2023.
//

import SwiftUI

struct PlayerDetailView: View {
    let player : SegmentViewModel
    var body: some View {
        ZStack{
            
            Color.gray.opacity(0.15)
            VStack{
                HStack(spacing:30){
                    Spacer().frame(width: 50)
                    Text(player.player).bold().font(.title2)
                    Spacer().frame(width: 20)
                    Text("Team : "+player.org).bold()
                }
                Spacer().frame(width: Const.ScreenSize.width,height: 2).background(.red)
                  
                Spacer().frame(height: 20)

                HStack( content: {
                    Text("ACS : "+player.averageCombatScore)
                    Spacer().frame(width: 100)
                    Text("KD : "+player.killDeaths)
                    
                    
                })
                Spacer().frame(height: 10)
                HStack( content: {
                    Text("FB Per Round : "+player.firstKillsPerRound)
                    Spacer().frame(width: 30)
                    Text("FD Per Round: "+player.firstDeathsPerRound)
                    
                    
                })
                
                
            }
        }.frame(width: Const.ScreenSize.width * 0.9 ,height: Const.ScreenSize.height * 0.15)
    }
        
    }



#Preview {
    PlayerDetailView(player: SegmentViewModel(segment: Segment(player: "playerName", org: "Clup", averageCombatScore: "acs", killDeaths: "KD", averageDamagePerRound: "avgDamage", killsPerRound: "killsPerround", assistsPerRound: "asist", firstKillsPerRound: "fb", firstDeathsPerRound: "fd", headshotPercentage: "hs", clutchSuccessPercentage: "clutch")))
}
