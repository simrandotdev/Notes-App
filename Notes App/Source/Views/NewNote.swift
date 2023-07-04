//
//  NewNote.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NewNote: View {
    
    @Environment(\.dismiss) var dismiss
    @FocusState private var focusedField: FocusedField?
    @State private var title: String = ""
    @State private var details: String = ""
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .font(.title)
                .fontWeight(.bold)
            TextEditor(text: $details)
                .background(Color.red)
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
    NewNote()
}

extension NewNote {
    enum FocusedField {
        case title, details
    }
}
