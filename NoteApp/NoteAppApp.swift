//
//  NoteAppApp.swift
//  NoteApp
//
//  Created by Frida Dahlqvist on 2024-04-19.
//

import SwiftUI

@main
struct NotesApp: App {
    var viewModel = NoteViewModel()
    
    var body: some Scene {
        WindowGroup {
            NotesListView(viewModel: viewModel)
        }
    }
}
