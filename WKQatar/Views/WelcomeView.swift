//
//  WelcomeView.swift
//  WKQatar
//
//  Created by Florian Degraeve on 15/10/2025.
//

import SwiftUI

struct WelcomeView: View {
    let datastore : DataStore = DataStore()
    @State var selectedCountry : String?
    
    var body: some View {
        VStack{
        Text("Select your favorite Team...")
        List(
            datastore.getAllTeams() ,id: \.self, selection: $selectedCountry) { Text($0)}
                
            NavigationLink("Next") {
                SplitView()}
            }
        
        }
    }


#Preview {
    WelcomeView()
}
