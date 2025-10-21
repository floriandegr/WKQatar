//
//  WKResultsDataStore.swift
//  WKQatar
//
//  Created by Florian Degraeve on 15/10/2025.
//

import Foundation



struct DataStore {
    let wkResults : [WKResult]
    
    init() {
    wkResults = load("WKResultsQatar.json")
    }
    
    func getStadiums() -> [String] {
        var stadiums = wkResults.map {$0.location}
        stadiums = stadiums.filter { $0 != "TBA"}
        let sStadium = Set(stadiums)
        return [String](sStadium)
    }
    func getMatchesAtStadium(stadium : String) -> [WKResult] {
        var matches = wkResults.filter {$0.location == stadium}
        return matches
    }
    func getmatch(match:WKResult) -> WKResult {
        
    }
}
