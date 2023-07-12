//
//  ContentView.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var foldersListViewData = FoldersListViewData()
    
    var body: some View {
        NavigationStack {
            FoldersList()
                .environment(foldersListViewData)
        }
    }
}

#Preview {
    ContentView()
}
