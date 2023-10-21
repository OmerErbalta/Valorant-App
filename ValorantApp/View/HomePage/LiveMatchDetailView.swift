//
//  MatchDetail.swift
//  ValorantApp
//
//  Created by OmerErbalta on 18.10.2023.
//

import SwiftUI

struct LiveMatchDetailView: View {
    let match:MatchViewModel
    var body: some View {
        ZStack{
            Color.gray.opacity(0.15)
            VStack{
                Text(match.eventName)
                AsyncImage(
                    url: URL(string: "https:"+match.eventIconUrl),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 30, maxHeight: 30)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
                  
                
                HStack( content: {
                    Text(match.teamOneName)
                    Text("-")
                    Text(match.teamTwoName)
                    
                })
                
                
                
            }
        }.frame(width: Const.ScreenSize.width * 0.6 ,height: Const.ScreenSize.height * 0.15)
    }
}

#Preview {
    LiveMatchDetailView(match: MatchViewModel(match: Match(teamOneName: "TeamOne", teamTwoName: "TeamTwo", matchURL: "URL", eventName: "eventName", eventIconURL: "eventIcon", matchTime: "time", eta: "eta")))
}
