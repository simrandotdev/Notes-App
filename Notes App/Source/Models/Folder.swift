//
//  Folder.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import Foundation
import Observation

@Observable
struct Folder: Codable, Identifiable {
    let id: Int
    let name: String
    let notes: [Note]
    var totalNotes: Int {
        notes.count
    }

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case notes
    }
}
