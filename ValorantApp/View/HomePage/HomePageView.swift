//
//  ContentView.swift
//  ValorantApp
//
//  Created by OmerErbalta on 18.10.2023.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationStack{
            LiveMatch()
            UpComingMatch()
        }
    }
}

#Preview {
    HomePageView()
}
