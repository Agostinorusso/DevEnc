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
                Text("Swift Programming Language")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Historical Background
                VStack(alignment: .leading, spacing: 8) {
                    Text("Historical Background")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("""
Swift is a general-purpose, multi-paradigm programming language developed by Apple Inc. and released in 2014. Designed as a successor to Objective-C, Swift focuses on improving developer productivity while maintaining compatibility with Apple’s extensive ecosystem. It is open-source and actively maintained by the Swift community, making it adaptable for a wide range of applications, from iOS and macOS development to server-side programming and beyond.

Swift quickly gained popularity due to its modern syntax, safety features, and performance. It provides an easy learning curve for newcomers and advanced features for seasoned developers. Over the years, Swift has evolved to support concurrent programming, better interoperability, and optimizations for the latest Apple hardware and software.
""")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                
                // Technical Features
                VStack(alignment: .leading, spacing: 8) {
                    Text("Technical Features")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("""
1. Safety and Reliability:
   - Type Safety: Swift prevents common errors through its strict type system, reducing runtime crashes.
   - Optionals: Swift includes the concept of optionals to handle the absence of a value safely.
   - Memory Safety: By using Automatic Reference Counting (ARC), Swift efficiently manages memory without relying on garbage collection.

2. Modern Syntax:
   - Swift’s syntax is clean and expressive, allowing developers to write concise yet powerful code.
   - It supports features like closures, tuples, generics, and pattern matching, which simplify complex coding tasks.

3. Performance:
   - Swift is designed for speed. It compiles directly to native machine code, achieving performance comparable to C++.
   - It avoids just-in-time (JIT) compilation, making it more deterministic and reliable for high-performance applications.

4. Concurrency Model:
   - With the introduction of structured concurrency, developers can write responsive and scalable code using async/await and actors.
   - The concurrency system ensures thread safety and optimizes for multicore processors.

5. Platform Integration:
   - Swift is optimized for Apple platforms like iOS, macOS, watchOS, and tvOS, leveraging frameworks such as UIKit, SwiftUI, and Combine.
   - It also supports server-side development with tools like Vapor and Kitura.

6. Interoperability:
   - Swift code can seamlessly interact with Objective-C, allowing gradual migration of legacy codebases.
   - Features like C++ interoperability enable Swift to integrate into systems-level applications.

7. Ecosystem and Tools:
   - Swift Playgrounds provide an interactive environment for learning and prototyping.
   - Swift Package Manager (SPM) simplifies dependency management and modular development.

8. Cross-Platform Applications:
   - Beyond Apple platforms, Swift supports Linux and is used for server-side and cross-platform command-line tools.
""")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
            }
            .padding()
        }
        .navigationTitle("Dictionary")
    }
}

