//
//  NoteDetail.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-04.
//

import SwiftUI

struct NoteDetail: View {
    
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
    }
}

#Preview {
    NoteDetail()
}
