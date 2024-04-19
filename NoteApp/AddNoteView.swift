//
//  AddNoteView.swift
//  NoteApp
//
//  Created by Frida Dahlqvist on 2024-04-19.
//

import SwiftUI

struct AddNoteView: View {
    @ObservedObject var viewModel: NoteViewModel
    @State private var content: String = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            TextField("Enter note here...", text: $content)
                .padding()
            Button("Add Note") {
                viewModel.addNote(content: content)
                content = ""
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}
