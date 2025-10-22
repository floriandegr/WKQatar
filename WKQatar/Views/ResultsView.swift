//
//  ResultsView.swift
//  WKQatar
//
//  Created by Florian Degraeve on 15/10/2025.
//

import SwiftUI

struct ResultsView: View {
    let stadium : String
    let datastore : DataStore = DataStore()
    @State var wkresult : WKResult?
    var body: some View {
        List(datastore.getMatchesAtStadium(stadium: stadium), id: \.self, selection: $wkresult){result in
            Grid{
                GridRow{
                    Text(result.homeTeam)
                    Text("X")
                    Text(result.awayTeam)
                }
                GridRow{
                    if(result.homeTeamScore !=  nil){
                        Text(String(result.homeTeamScore!))
                        Text("-")
                        Text(String(result.awayTeamScore!))
                    }
                }
            }
            
        }
    }
}

