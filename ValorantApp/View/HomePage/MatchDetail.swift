//
//  MatchDetail.swift
//  ValorantApp
//
//  Created by OmerErbalta on 18.10.2023.
//

import SwiftUI

struct MatchDetail: View {
    let match:MatchViewModel
    var body: some View {
        ZStack{
            Color.gray.opacity(0.4)
            VStack{
                Text("Event Name")
                
                
                HStack( content: {
                    Text("Team 1")
                    Text("-")
                    Text("Team 2")
                    
                })
                
                
            }
        }.frame(width: Const.ScreenSize.width * 0.5 ,height: Const.ScreenSize.height * 0.15)
    }
}

#Preview {
    MatchDetail(match: MatchViewModel(match: Match(teamOneName: "TeamOne", teamTwoName: "TeamTwo", matchURL: "URL", eventName: "eventName", eventIconURL: "eventIcon", matchTime: "time", eta: "eta")))
}
