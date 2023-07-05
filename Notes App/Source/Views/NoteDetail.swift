//
//  NoteDetail.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NoteDetail: View {
    
    @Environment(\.dismiss) var dismiss
    @FocusState private var focusedField: FocusedField?
    @State private var title: String = ""
    @State private var details: String = ""
    
    var note: Note
    
    init(note: Note) {
        self.note = note
        _title = State(initialValue: note.title)
        _details = State(initialValue: note.details)
        
    }
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .focused($focusedField, equals: .title)
                .font(.title)
                .fontWeight(.bold)
                
            TextEditor(text: $details)
                .focused($focusedField, equals: .details)
                .frame(minHeight: 200)
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done", action: doneAction)
            }
        })
        .onSubmit {
            switch focusedField {
            case .title:
                focusedField = .details
            default:
                dismiss()
            }
        }
    }
    
    private func doneAction() {
        defer { dismiss() }
    }
}

#Preview {
    NoteDetail(note: Note(id: 1, title: "Note", details: "Note Details"))
}

extension NoteDetail {
    enum FocusedField {
        case title, details
    }
}
