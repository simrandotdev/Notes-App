//
//  NotesList.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NotesList: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        List {
            ForEach(1..<6) { _ in
                NotesListRow()
            }
        }
        .navigationTitle("All iCloud")
        .searchable(text: $searchText,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: Text("Search"))
        .toolbar(content: {
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Image(systemName: "")
                    Spacer()
                    NavigationLink {
                        NewNote()
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
        })
    }
    
    private func newNoteAction() {
        
    }
}

#Preview {
    NotesList()
}
