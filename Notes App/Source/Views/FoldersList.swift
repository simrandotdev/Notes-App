//
//  FoldersList.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI
import Observation

struct FoldersList: View {
    
    @Environment(FoldersListViewData.self) private var viewData: FoldersListViewData
    @State private var showNewFolderSheet = false
    
    var body: some View {
        VStack {
            List(viewData.folders, id: \.id) { folder in
                
            }
        }
        .navigationTitle("Folders")
        .toolbar(content: {
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Button(action: showNewFolderSheetAction, label: {
                        Image(systemName: "folder.badge.plus")
                            .foregroundStyle(Color.accentColor)
                    })
                    
                    Spacer()
                    
                    
                    NavigationLink {
                        NewNote()
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
        })
        .sheet(isPresented: $showNewFolderSheet, content: {
            NewFolderSheet(showNewFolderSheet: $showNewFolderSheet)
        })
    }
    
    private func showNewFolderSheetAction() {
        showNewFolderSheet.toggle()
    }
    
    private func newNoteAction() {
        
    }
}

#Preview {
    FoldersList()
}
