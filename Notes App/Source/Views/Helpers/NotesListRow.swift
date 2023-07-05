//
//  NotesListRow.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NotesListRow: View {
    
    var title: String
    var subtitle: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
           Text(title)
                .fontWeight(.bold)
            Text(subtitle)
                .font(.caption)
                .foregroundStyle(Color(.secondaryLabel))
        }
    }
}

#Preview {
    NotesListRow(title: "Title", subtitle: "Subtitle")
}
