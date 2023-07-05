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
    
    init(notes: [Note]) {
        self.notes = notes
    }
}
