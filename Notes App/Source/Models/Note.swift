//
//  Note.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-11.
//

import Foundation
import Observation


final class Note: Codable{
    let id: UUID
    var title: String
    var details: String
    
    init(id: UUID = UUID(), title: String, details: String) {
        self.id = id
        self.title = title
        self.details = details
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case details
    }
}
