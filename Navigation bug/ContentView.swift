//
//  ContentView.swift
//  Navigation bug
//
//  Created by Сивцов Антон on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isPresentedModaly = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Push Screen") {
                    Screen()
                }
                NavigationLink("Push Screen no navigation bar") {
                    Screen()
                        .navigationBarHidden(true)
                }
                Button("Show screen modaly") {
                    isPresentedModaly.toggle()
                }
                .sheet(isPresented: $isPresentedModaly) {
                    Screen()
                }
            }
            .navigationTitle("Main")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
