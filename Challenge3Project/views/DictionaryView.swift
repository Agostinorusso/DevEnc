//
//  DictionaryView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import SwiftUI

struct DictionaryView: View {
    let language: ProgrammingLanguage

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            switch language.name {
            case "Swift":
                swiftDictionary
            case "Python":
                pythonDictionary
            case "Java":
                javaDictionary
            case "C":
                cDictionary
            case "C++":
                cppDictionary
            case "Ruby":
                rubyDictionary
            case "JavaScript":
                javascriptDictionary
            default:
                SectionView(title: "Unavailable", content: "No dictionary available for \(language.name).")
            }
        }
        .padding()
        .navigationTitle("\(language.name) Dictionary")
    }
}


// MARK: - Swift
private var swiftDictionary: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Optional", content: "A type that can hold either a value or nil, used to handle the absence of a value.")
        SectionView(title: "Protocol", content: "A blueprint of methods, properties, or other requirements that suit a particular task or piece of functionality.")
        SectionView(title: "Closure", content: "A self-contained block of functionality that can be passed around and used in your code.")
    }
}

// MARK: - Python
private var pythonDictionary: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "List", content: "An ordered collection of items that is mutable and allows duplicate elements.")
        SectionView(title: "Dictionary", content: "A collection of key-value pairs, where keys are unique and used to access corresponding values.")
        SectionView(title: "Lambda", content: "An anonymous function expressed as a single statement.")
    }
}

// MARK: - Java
private var javaDictionary: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Interface", content: "An abstract type used to specify a set of methods a class must implement.")
        SectionView(title: "JVM", content: "Java Virtual Machine, an engine that provides a runtime environment to drive Java code or applications.")
        SectionView(title: "Garbage Collection", content: "Automatic memory management feature to reclaim memory occupied by unused objects.")
    }
}

// MARK: - C
private var cDictionary: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Pointer", content: "A variable that stores the memory address of another variable.")
        SectionView(title: "Struct", content: "A user-defined data type that groups variables of different types under one name.")
        SectionView(title: "Header File", content: "A file containing declarations used across multiple source files.")
    }
}

// MARK: - C++
private var cppDictionary: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Template", content: "A feature for writing generic and type-independent code.")
        SectionView(title: "Class", content: "A blueprint for creating objects, providing initial values and implementations of behavior.")
        SectionView(title: "Namespace", content: "A declarative region that provides scope to the identifiers inside it.")
    }
}

// MARK: - Ruby
private var rubyDictionary: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Block", content: "An anonymous piece of code that can be passed into methods.")
        SectionView(title: "Gem", content: "A packaged Ruby application or library used to extend functionality.")
        SectionView(title: "Symbol", content: "An immutable and reusable string-like identifier, often used as keys.")
    }
}

// MARK: - JavaScript
private var javascriptDictionary: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Promise", content: "An object representing the eventual completion or failure of an asynchronous operation.")
        SectionView(title: "Closure", content: "A function that retains access to its lexical scope even when invoked outside that scope.")
        SectionView(title: "Hoisting", content: "The behavior in which variable and function declarations are moved to the top of their containing scope.")
    }
}
