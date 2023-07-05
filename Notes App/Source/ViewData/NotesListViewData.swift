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
    
    var notes: [Note] = []
    var folderName: String = ""
    var searchText: String = ""
    var totalNotes: String {
        return "\(notes.count)"
    }
    
    init(folder: Folder) {
        self.notes = folder.notes
        self.folderName = folder.name
    }
}
