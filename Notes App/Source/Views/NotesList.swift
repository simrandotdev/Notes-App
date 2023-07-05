//
//  NotesList.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NotesList: View {
    
    @State var viewData: NotesListViewData
    
    init(folder: Folder) {
        _viewData = State(initialValue: NotesListViewData(notes: folder.notes))
    }
    
    @State private var searchText: String = ""
    
    var body: some View {
        List(viewData.notes, id: \.id) { note in
            NavigationLink {
                NoteDetail(note: note)
            } label: {
                NotesListRow(title: note.title, subtitle: note.details)
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
    NotesList(folder: Folder(id: 1, name: "All Cloud", notes: []))
}
