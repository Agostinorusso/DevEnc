//
//  ProgrammingLanguagesViewModel.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import SwiftUI

// Enum for toolbar options
enum ToolbarOption {
    case dictionary
    case syntax
}

// ViewModel to manage the programming languages and toolbar state
class ProgrammingLanguagesViewModel: ObservableObject {
    @Published var programmingLanguages: [ProgrammingLanguage] = [
        ProgrammingLanguage(name: "Swift", icon: "swiftCustomIcon"), // Replace with actual image names
        ProgrammingLanguage(name: "Python", icon: "pythonCustomIcon"),
        ProgrammingLanguage(name: "JavaScript", icon: "javascriptCustomIcon"),
        ProgrammingLanguage(name: "Java", icon: "javaCustomIcon"),
        ProgrammingLanguage(name: "C", icon: "cCustomIcon"),
        ProgrammingLanguage(name: "C++", icon: "c++CustomIcon"),
        ProgrammingLanguage(name: "Ruby", icon: "rubyCustomIcon")
    ]

    @Published var toolbarSelection: ToolbarOption = .dictionary // Default toolbar option
}


