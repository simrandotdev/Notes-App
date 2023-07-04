//
//  NotesListRow.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NotesListRow: View {
    var body: some View {
        NavigationLink {
            NoteDetail()
        } label: {
            VStack(alignment: .leading) {
               Text("Note")
                    .fontWeight(.bold)
                Text("Some note description")
                    .font(.caption)
                    .foregroundStyle(Color(.secondaryLabel))
            }
        }

    }
}

#Preview {
    NotesListRow()
}
