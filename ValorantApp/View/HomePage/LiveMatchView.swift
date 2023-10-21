//
//  LiveMatch.swift
//  ValorantApp
//
//  Created by OmerErbalta on 19.10.2023.
//

import SwiftUI

struct LiveMatchView: View {
    @ObservedObject var matchListViewModel : MatchListViewModel
    init(){
        self.matchListViewModel = MatchListViewModel()
    }
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                Text("Live").font(.title).fontWeight(.bold).foregroundStyle(.black)
                Image("live")

            }
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(matchListViewModel.matchList,id: \.id){match in
                        if (match.eta == ""){
                            LiveMatchDetailView(match: match)
                        }
                    }
                }
            }
        }.task {
            await matchListViewModel.downloadMatchListAsync(url: URL(string: "https://vlrgg.cyclic.app/api/matches/upcoming")!)
            print("task")
        }
    }
}

#Preview {
    LiveMatchView()
}
