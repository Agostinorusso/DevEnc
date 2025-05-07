//
//  ProgrammingLanguageDetailView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import SwiftUI

struct ProgrammingLanguageDetailedView: View {
    let language: ProgrammingLanguage

    var body: some View {
        TabView {
            DictionaryView(language: language)
                .tabItem {
                    Label("Dictionary", systemImage: "book")
                }

            SyntaxView(language: language)
                .tabItem {
                    Label("Syntax", systemImage: "chevron.left.slash.chevron.right")
                }
        }
        .navigationTitle(language.name)
    }
}



// MARK: - Swift Content
private var swiftContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
Swift is a general-purpose, multi-paradigm programming language developed by Apple Inc. and released in 2014. Designed as a successor to Objective-C, Swift aims to provide a safer, more modern alternative with concise syntax and improved memory management. It is open-source and backed by a large community, making it ideal for Apple platforms, as well as server-side development and systems programming.
"""
        )

        SectionView(
            title: "Technical Features",
            content: """
1. Type Safety and Optionals
2. Automatic Reference Counting (ARC)
3. Protocol-Oriented and Functional Programming
4. Powerful Generics
5. Actor Model and async/await concurrency
6. Integration with Objective-C and C++
"""
        )
    }
}

// MARK: - Python Content
private var pythonContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
Python was created by Guido van Rossum and released in 1991. It was developed to emphasize code readability and simplicity, with a syntax that allows developers to express concepts in fewer lines of code. Named after Monty Python, it was designed to be fun and approachable. Python has grown into one of the most popular programming languages in the world, used in web development, automation, data analysis, machine learning, artificial intelligence, and more.
"""
        )

        SectionView(
            title: "Technical Features",
            content: """
1. Easy-to-read syntax, making it beginner-friendly.
2. Dynamically typed and interpreted.
3. Large standard library and community-driven packages (NumPy, Django, Flask, etc.).
4. Multi-paradigm: object-oriented, procedural, and functional.
5. Portable and embeddable across different operating systems.
6. Interoperability with other languages like C, C++, and Java via bindings.
"""
        )
    }
}

// MARK: - Java Content
private var javaContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
Java was released in 1995 by Sun Microsystems, with the philosophy of “Write Once, Run Anywhere.” It gained massive popularity in enterprise and mobile application development, especially with the rise of Android. Its robustness, portability, and rich API ecosystem made it a go-to language for large-scale systems.
"""
        )

        SectionView(
            title: "Technical Features",
            content: """
1. Object-Oriented Programming (OOP) with encapsulation and polymorphism.
2. Platform independence via the Java Virtual Machine (JVM).
3. Rich frameworks (Spring, Hibernate, Jakarta EE).
4. Automatic memory management (Garbage Collection).
5. Strongly typed and statically compiled.
6. Security features and sandboxing.
"""
        )
    }
}

// MARK: - C Content
private var cContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
C was developed in 1972 by Dennis Ritchie at Bell Labs. It is one of the most influential programming languages and forms the foundation for many others including C++, Java, and Objective-C. It was designed for system-level programming and remains widely used in embedded systems, operating systems, and hardware drivers.
"""
        )

        SectionView(
            title: "Technical Features",
            content: """
1. Procedural language with low-level memory access.
2. Direct use of pointers and manual memory management.
3. Small standard library, highly portable.
4. Compiles directly to machine code.
5. Forms the basis of UNIX and Linux kernels.
"""
        )
    }
}

// MARK: - C++ Content
private var cppContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
C++ was created by Bjarne Stroustrup as an extension of C to add object-oriented features. It debuted in the 1980s and has since become a staple for performance-critical applications such as games, high-frequency trading, and real-time systems. Its blend of low-level access with high-level abstractions makes it incredibly powerful and complex.
"""
        )

        SectionView(
            title: "Technical Features",
            content: """
1. Multi-paradigm: procedural, object-oriented, and generic.
2. Direct memory access with smart pointers.
3. Rich standard template library (STL).
4. Compile-time polymorphism (templates).
5. Support for C interoperability and modern C++ standards.
"""
        )
    }
}

// MARK: - Ruby Content
private var rubyContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
Ruby was created in the mid-1990s by Yukihiro Matsumoto to focus on developer happiness and productivity. It gained massive popularity through the Ruby on Rails web framework, which helped pioneer convention over configuration and rapid application development.
"""
        )

        SectionView(
            title: "Technical Features",
            content: """
1. Everything is an object, even primitive types.
2. Dynamic typing and duck typing.
3. Elegant and expressive syntax.
4. Metaprogramming capabilities.
5. Large ecosystem of "gems" (libraries).
6. MVC-based Rails framework for web apps.
"""
        )
    }
}

// MARK: - JavaScript Content
private var javascriptContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
JavaScript was created in 1995 by Brendan Eich at Netscape and became the de facto language of the web. Initially mocked for its simplicity, it has evolved into a robust full-stack language with front-end frameworks like React, and back-end tools like Node.js.
"""
        )

        SectionView(
            title: "Technical Features",
            content: """
1. Event-driven, asynchronous programming.
2. Prototype-based object orientation.
3. Runs in the browser and on the server (Node.js).
4. ES6+ modern syntax (let/const, arrow functions, promises).
5. Extensive front-end and back-end ecosystem.
"""
        )
    }
}
// MARK: - C# Content

private var csharpContent: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(
            title: "Historical Background",
            content: """
C# was developed by Microsoft, led by Anders Hejlsberg, and released in 2000 as part of its .NET initiative. It quickly became one of the most popular languages for Windows development.
"""
        )
        SectionView(
            title: "Technical Features",
            content: """
1. Multi-paradigm programming language.
2. Strong integration with .NET ecosystem.
3. Type-safe and managed memory.
4. Modern features like async/await.
5. Cross-platform development (Xamarin, .NET Core).
"""
        )
    }
}
