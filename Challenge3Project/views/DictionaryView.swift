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
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Title
                Text("\(language.name) Programming Language")
                    .font(.title)
                    .fontWeight(.bold)
                    .accessibilityLabel("\(language.name) Programming Language")
                
                // Display content based on the selected programming language
                switch language.name {
                case "Swift":
                    swiftContent
                case "Python":
                    pythonContent
                case "Java":
                    javaContent
                case "C":
                    cContent
                case "C++":
                    cppContent
                case "Ruby":
                    rubyContent
                case "JavaScript":
                    javascriptContent
                default:
                    Text("Information for \(language.name) is not available yet.")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .accessibilityLabel("No information available for \(language.name).")
                }
            }
            .padding()
        }
        .navigationTitle("Dictionary")
        .accessibilityAddTraits(.isHeader) // Marks the main dictionary view as a header
    }
    
    // MARK: - Swift Content
    private var swiftContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            accessibilitySection(
                title: "Historical Background",
                content: """
Swift is a general-purpose, multi-paradigm programming language developed by Apple Inc. and released in 2014. Designed as a successor to Objective-C, Swift focuses on improving developer productivity while maintaining compatibility with Apple’s extensive ecosystem. It is open-source and actively maintained by the Swift community, making it adaptable for a wide range of applications, from iOS and macOS development to server-side programming and beyond.
"""
            )
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Safety and Reliability:
   - Type Safety: Swift prevents common errors through its strict type system, reducing runtime crashes.
   - Optionals: Swift includes the concept of optionals to handle the absence of a value safely.
   - Memory Safety: By using Automatic Reference Counting (ARC), Swift efficiently manages memory.

2. Modern Syntax:
   - Clean and expressive syntax with closures, generics, and pattern matching.

3. Performance:
   - Compiles to native machine code, providing high performance.

4. Concurrency:
   - Async/await and actors for responsive, scalable code.

5. Interoperability:
   - Swift works with Objective-C and C++ seamlessly.

6. Ecosystem:
   - Tools like Swift Playgrounds and Swift Package Manager.
"""
            )
        }
    }

    // MARK: - Python Content
    private var pythonContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            accessibilitySection(
                title: "Historical Background",
                content: """
Python, created by Guido van Rossum in 1991, emphasizes readability and simplicity. Named after Monty Python, Python promotes fun and approachable programming.
"""
            )
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Ease of Learning:
   - Readable syntax, great for beginners.

2. Multi-Paradigm:
   - Supports object-oriented and functional programming.

3. Libraries:
   - Tools like NumPy, Flask, and Django.

4. Portability:
   - Runs on multiple platforms.

5. Interoperability:
   - Works with C, C++, and Java.
"""
            )
        }
    }
    
    // MARK: - JavaScript Content
    private var javascriptContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            accessibilitySection(
                title: "Historical Background",
                content: """
JavaScript, created by Brendan Eich in 1995, brought interactivity to web pages. With Node.js, it expanded to full-stack development.
"""
            )
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Event-driven Programming:
   - Asynchronous code with event loops.

2. Ecosystem:
   - Front-end tools (React, Vue.js), and back-end (Node.js).

3. Modern Features:
   - ES6+ syntax, classes, and promises.
"""
            )
        }
    }
    
    // MARK: - Java Content
    private var javaContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            accessibilitySection(
                title: "Historical Background",
                content: """
Java, released in 1995, introduced Write Once, Run Anywhere. It became a backbone for enterprise software and Android development.
"""
            )
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Platform Independence:
   - JVM enables code portability.

2. Object-Oriented:
   - Inheritance, polymorphism, and encapsulation.

3. Frameworks:
   - Spring, Hibernate, and Struts.
"""
            )
        }
    }
    
    // MARK: - C Content
    private var cContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            accessibilitySection(
                title: "Historical Background",
                content: """
C, developed in 1972, became the foundation of modern programming, from operating systems to embedded devices.
"""
            )
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Low-level Memory Access:
   - Control over hardware with pointers.

2. Portability:
   - Runs efficiently across systems.

3. Procedural Paradigm:
   - Focuses on structured programming.
"""
            )
        }
    }
    
    // MARK: - C++ Content
    private var cppContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            accessibilitySection(
                title: "Historical Background",
                content: """
C++, created in 1985, extended C with object-oriented programming. It powers systems software, games, and real-time applications.
"""
            )
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Object-Oriented:
   - Supports classes, inheritance, and polymorphism.

2. High Performance:
   - Compiles directly to machine code.

3. Advanced Features:
   - Smart pointers, STL, and modern C++ standards.
"""
            )
        }
    }
    
    // MARK: - Ruby Content
    private var rubyContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            accessibilitySection(
                title: "Historical Background",
                content: """
Ruby, created in 1995, emphasizes developer happiness and productivity. Ruby on Rails made it a leader in web development.
"""
            )
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Object-oriented Everything:
   - Every value is an object.

2. Dynamic Typing:
   - Reduces code verbosity.

3. Metaprogramming:
   - Allows dynamic code generation.

4. Ecosystem:
   - Includes Ruby gems and Rails framework.
"""
            )
        }
    }

    // MARK: - Reusable Accessibility Section
    private func accessibilitySection(title: String, content: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
                .accessibilityAddTraits(.isHeader) // Marks section titles as headers
            Text(content)
                .font(.body)
                .multilineTextAlignment(.leading)
                .accessibilityLabel(content) // Ensures full content is read aloud
        }
    }
}
