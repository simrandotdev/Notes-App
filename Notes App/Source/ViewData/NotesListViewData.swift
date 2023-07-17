//
//  NotesListViewData.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-12.
//

import Foundation
import Observation

@Observable
final class NotesListViewData {
    
    private var folder: Folder! = nil
    private var dataStore = DataStore()
    
    init(folder: Folder, dataStore: DataStore = DataStore()) {
        self.folder = folder
        self.dataStore = dataStore
    }
    
    func save(note: Note) {
        guard let folders = dataStore.object(forKey: "folders", type: [Folder].self),
              let currentFolderIndex = folders.firstIndex(where: { $0.id == folder.id }),
              folders.count >= currentFolderIndex else {
            // TODO: Throw an error.
            return
        }
        let currentFolder = folders[currentFolderIndex]
        currentFolder.notes.append(note)
        folders[currentFolderIndex].notes.append(note)
        dataStore.set(folders, key: "folders")
    }
}
    
