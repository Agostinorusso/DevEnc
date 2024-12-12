//
//  ProgrammingLanguage.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import Foundation

// Model for a programming language
struct ProgrammingLanguage: Identifiable {
    let id = UUID()
    let name: String
    let icon: String // The name of the icon image
}
