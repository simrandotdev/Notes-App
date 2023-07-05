//
//  ContentView.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI
import Observation

struct ContentView: View {
    
    @State private var flvd = FoldersListViewData()
    
    var body: some View {
        NavigationStack {
            FoldersList()
                .environment(flvd)
        }
    }
}

#Preview {
    ContentView()
}
