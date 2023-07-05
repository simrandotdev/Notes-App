//
//  FolderListRow.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct FolderListRow: View {
    
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack {
            Image(systemName: "folder")
                .foregroundStyle(Color.accentColor)
            Text(title)
            
            Spacer()
            
            Text(subtitle)
                .foregroundStyle(Color(.secondaryLabel))
        }
    }
}

#Preview {
    FolderListRow(title: "All Cloud", subtitle: "5")
}
