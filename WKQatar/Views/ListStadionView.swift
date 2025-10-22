//
//  ListStadionView.swift
//  WKQatar
//
//  Created by Florian Degraeve on 15/10/2025.
//

import SwiftUI

struct ListStadionView: View {
    let datastore : DataStore = DataStore()
    @State var selectedStadium :String?
    var body: some View {
        List(
            datastore.getStadiums() ,id: \.self, selection: $selectedStadium) { stadium in
                
                NavigationLink(stadium) {ResultsView(stadium: stadium)}
            }
    }
}


