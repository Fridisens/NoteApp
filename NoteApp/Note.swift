//
//  Note.swift
//  NoteApp
//
//  Created by Frida Dahlqvist on 2024-04-19.
//

import Foundation

struct Note: Identifiable, Codable {
    var id: UUID = UUID()
    var content: String
    var date : Date
}
