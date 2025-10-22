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
        return Array(Set(stadiums)).sorted()
        
    }
    func getMatchesAtStadium(stadium : String) -> [WKResult] {
        var matches = wkResults.filter {$0.location == stadium}
        matches = matches.filter{$0.group != nil}
        return matches
    }
    func getmatch(match:WKResult) -> [WKResult] {
        let match = wkResults.filter {$0.matchNumber == match.matchNumber}
        return match
    }
    func getAllTeams() -> [String] {
        var matches = wkResults.filter{$0.group != nil}
        var teams = matches.map { $0.homeTeam }
        teams.append(contentsOf: matches.map{ $0.awayTeam})
        
        return Array(Set(teams)).sorted()

    }
}
