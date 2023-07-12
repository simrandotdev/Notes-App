//
//  Folder.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-11.
//

import Foundation
import Observation

@Observable
final class Folder: Codable, Identifiable {
    let id: UUID
    let name: String
    let notes: [Note]
    var totalNotes: Int { notes.count }
    
    init(id: UUID = UUID(), name: String, notes: [Note]) {
        self.id = id
        self.name = name
        self.notes = notes
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case notes
    }
}
