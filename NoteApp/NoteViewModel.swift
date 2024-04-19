//
//  NoteViewModel.swift
//  NoteApp
//
//  Created by Frida Dahlqvist on 2024-04-19.
//

import SwiftUI


class NoteViewModel: ObservableObject {
    @Published var notes: [Note] = []

    func addNote(content: String) {
        let newNote = Note(content: content, date : Date())
        notes.append(newNote)
    }

    func deleteNote(at indexSet: IndexSet) {
        notes.remove(atOffsets: indexSet)
    }

    func updateNote(id: UUID, content: String) {
        if let index = notes.firstIndex(where: { $0.id == id }) {
            notes[index].content = content
        }
    }
}

