//
//  ContentView.swift
//  CitiesViewSwiftUI
//
//  Created by Vladlens Kukjans on 26/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    private var cities  = CityAPI.getCities()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16 ) {
                    ForEach(cities) { city in
                        CityCard(city: city)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Cities")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
