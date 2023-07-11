//
//  NotesListViewData.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import Foundation
import Observation

@Observable
final class NotesListViewData {
    
    private var originalNotes: [Note] = []
    var notes: [Note] = []
    var folderName: String = ""
    var searchText: String = ""
    var totalNotes: String {
        return "\(notes.count)"
    }
    
    
    init(folder: Folder) {
        self.notes = folder.notes
        self.originalNotes = self.notes
        self.folderName = folder.name
        observeProperties()
    }
    
    private func observeProperties() {
        withObservationTracking {
            let _ = searchText
        } onChange: { [weak self] in
            guard let self else { return }
            observeProperties()
            notes = searchText.count >= 1
            ? originalNotes.filter { $0.title.lowercased().contains(self.searchText.lowercased()) ||  $0.details.lowercased().contains(self.searchText.lowercased())}
            : originalNotes
        }
    }
}
