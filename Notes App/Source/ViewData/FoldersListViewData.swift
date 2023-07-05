//
//  FoldersListViewData.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import Foundation
import Observation

@Observable
final class FoldersListViewData {
    
    var folders: [Folder] = []
    
    func fetchFolders() {
        let file = "Data.json"
        guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to load \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        do {
            folders =  try decoder.decode([Folder].self, from: data)
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
    }    
}
