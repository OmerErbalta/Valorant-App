//
//  ContentView.swift
//  ValorantApp
//
//  Created by OmerErbalta on 18.10.2023.
//

import SwiftUI

struct HomePage: View {
    @ObservedObject var matchListViewModel : MatchListViewModel
    init(){
        self.matchListViewModel = MatchListViewModel()
    }
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Text("Live Match")
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 15){
                        ForEach(matchListViewModel.matchList,id: \.id){match in
                            MatchDetail(match: match)
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
    HomePage()
}
