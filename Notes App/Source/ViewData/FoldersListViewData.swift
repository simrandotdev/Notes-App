//
//  FoldersListViewData.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-11.
//

import Foundation
import Observation

@Observable
final class FoldersListViewData {
    
    var folders: [Folder] = []
    
    private var dataStore = DataStore()
    
    func add(folderName: String) {
        let folder = Folder(name: folderName, notes: [])
        folders.append(folder)
        dataStore.set(folders, key: "folders")
    }
    
    func fetch() {
        folders = dataStore.object(forKey: "folders", type: [Folder].self) ?? []
    }
}
