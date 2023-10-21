//
//  UpComingMatch.swift
//  ValorantApp
//
//  Created by OmerErbalta on 19.10.2023.
//

import SwiftUI

struct UpComingMatchView: View {
    @ObservedObject var matchListViewModel : MatchListViewModel
    init(){
        self.matchListViewModel = MatchListViewModel()
    }
    var body: some View {
    
            VStack(alignment: .leading){
                HStack{
                    Text("Up Coming").font(.title).fontWeight(.bold).foregroundStyle(.black)
                    Image("upComing")
                    
                }
                List(matchListViewModel.matchList,id: \.id){match in
                    if match.eta != ""{
                        UpComingMatchDetail(match: match)
                    }
                }.colorMultiply(.white)
            }.task {
                await matchListViewModel.downloadMatchListAsync(url: URL(string: "https://vlrgg.cyclic.app/api/matches/upcoming")!)
                print("task")}
        }
}
#Preview {
    UpComingMatchView()
}
