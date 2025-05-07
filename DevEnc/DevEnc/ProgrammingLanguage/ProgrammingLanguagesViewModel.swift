//
//  ProgrammingLanguagesViewModel.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//
import Foundation

final class ProgrammingLanguageViewModel: ObservableObject {
    @Published var languages: [ProgrammingLanguage] = []
    
    init() {
        loadLanguages()
    }
    
    private func loadLanguages() {
        languages = [
            ProgrammingLanguage(name: "Swift", iconName: "swift_icon"),
            ProgrammingLanguage(name: "Python", iconName: "python_icon"),
            ProgrammingLanguage(name: "Java", iconName: "java_icon"),
            ProgrammingLanguage(name: "C", iconName: "c_icon"),
            ProgrammingLanguage(name: "C++", iconName: "cpp_icon"),
            ProgrammingLanguage(name: "Ruby", iconName: "ruby_icon"),
            ProgrammingLanguage(name: "JavaScript", iconName: "javascript_icon"),
            ProgrammingLanguage(name: "C#", iconName: "csharp_icon")
        ]
    }
}
