//
//  FolderListRow.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct FolderListRow: View {
    
    var body: some View {
        NavigationLink {
            NotesList()
        } label: {
            HStack {
                Image(systemName: "folder")
                    .foregroundStyle(Color.accentColor)
                Text("All Cloud")
                
                Spacer()
                
                Text("5")
                    .foregroundStyle(Color(.secondaryLabel))
            }
        }
    }
}

#Preview {
    FolderListRow()
}
