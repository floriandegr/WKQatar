//
//  ScoreListView.swift
//  WKQatar
//
//  Created by Florian Degraeve on 15/10/2025.
//

import SwiftUI

struct SplitView: View {
    @State var selectedStadium : String?
    var body: some View {
        NavigationSplitView {
            ListStadionView().environment(selectedStadium)
        } content: {
            ResultsView(stadium: selectedStadium!)
        } detail: {
            DetailGameView()
        }

    }
}
