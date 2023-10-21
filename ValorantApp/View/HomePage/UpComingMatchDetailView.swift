//
//  UpComingMatchDetail.swift
//  ValorantApp
//
//  Created by OmerErbalta on 19.10.2023.
//

import SwiftUI

struct UpComingMatchDetailView: View {
    let match:MatchViewModel
    var body: some View {
        ZStack{
            
            Color.gray.opacity(0.15)
            VStack{
                HStack(spacing:30){
                    Text(match.eventName).font(.system(size: 10))
                    AsyncImage(
                        url: URL(string: "https:"+match.eventIconUrl),
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 50, maxHeight: 45)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                }
                Spacer().frame(width: Const.ScreenSize.width,height: 2).background(.blue)
                  
                Spacer().frame(height: 20)

                HStack( content: {
                    Text(match.teamOneName).bold()
                    Text(match.eta).opacity(0.7)
                    Text(match.teamTwoName).bold()
                    
                })
                Spacer().frame(height: 10)
                Text(match.matchTime)
                
                
                
            }
        }.frame(width: Const.ScreenSize.width * 0.9 ,height: Const.ScreenSize.height * 0.15)
    }
}

#Preview {
    UpComingMatchDetailView(match: MatchViewModel(match: Match(teamOneName: "TeamOne", teamTwoName: "TeamTwo", matchURL: "URL", eventName: "eventName", eventIconURL: "eventIcon", matchTime: "time", eta: "eta")))}
