//
//  Note.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import Foundation
import Observation

@Observable
struct Note: Codable, Identifiable {
    let id: Int
    let title: String
    let details: String

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case details
    }
}
