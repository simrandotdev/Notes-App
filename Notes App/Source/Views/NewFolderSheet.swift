//
//  NewFolderSheet.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NewFolderSheet: View {
    
    @Binding var showNewFolderSheet: Bool
    @Environment(\.dismiss) var dismiss
    @State private var newFolderName = ""
    
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("New folder name", text: $newFolderName)
            }
            .navigationTitle("New Folder")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: cancelActionSheet, label: {
                        Text("Cancel")
                            .foregroundStyle(Color.accentColor)
                    })
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: saveAction, label: {
                        Text("Save")
                            .foregroundStyle(Color.accentColor)
                    })
                }
            })
        }
    }
    
    private func cancelActionSheet() {
        showNewFolderSheet = false
    }
    
    private func saveAction() {
        dismiss()
    }
}

#Preview {
    NewFolderSheet(showNewFolderSheet: .constant(false))
}
