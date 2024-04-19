//
//  NoteListView.swift
//  NoteApp
//
//  Created by Frida Dahlqvist on 2024-04-19.
//

import SwiftUI

struct NotesListView: View {
    @ObservedObject var viewModel: NoteViewModel
    let dateFormatter: DateFormatter
    
    init(viewModel: NoteViewModel) {
        self.viewModel = viewModel
        self.dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
    }
    
    var body: some View {
            NavigationView {
                List {
                    ForEach(viewModel.notes) { note in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(note.content)
                                    .font(.headline)
                                Text(dateFormatter.string(from: note.date))
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .onDelete(perform: viewModel.deleteNote)
                }
                .navigationTitle("Notes")
                .toolbar {
                    NavigationLink(destination: AddNoteView(viewModel: viewModel)) {
                        Text("Add Note")
                    }
                }
            }
        }
    }

