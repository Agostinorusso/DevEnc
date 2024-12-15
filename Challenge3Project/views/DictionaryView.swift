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
Python, created by Guido van Rossum in 1991, emphasizes readability, simplicity, and ease of use. Initially designed as a successor to the ABC programming language, Python quickly gained popularity for its straightforward syntax, making it accessible for beginners while also powerful for professional software development. The name "Python" was inspired by Monty Python, reflecting the language’s fun and approachable philosophy.

Python’s growth was catalyzed by its active community, which contributed to the creation of an extensive library ecosystem. Over the years, Python has evolved into a general-purpose language used in diverse fields, from web development to data science, artificial intelligence, automation, and scientific computing. Its philosophy, famously summarized by "There’s only one way to do it," encourages clean and readable code.
"""
)
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Ease of Learning:
   - Python’s simple, human-readable syntax is designed to be intuitive and easy to learn. Its minimalistic design eliminates the need for many complex symbols and allows developers to focus on solving problems rather than wrestling with syntax.
   
2. Multi-Paradigm:
   - Python supports multiple programming paradigms, including object-oriented, imperative, functional, and procedural programming, giving developers flexibility in how they design software.

3. Extensive Libraries and Frameworks:
   - Python has a vast ecosystem of libraries and frameworks, such as NumPy for numerical computing, Flask and Django for web development, and TensorFlow and PyTorch for machine learning. These tools streamline development in various domains, from scientific research to web apps and AI.

4. Interoperability and Extensibility:
   - Python is highly extensible and can interact with other languages, such as C and C++, via bindings and extensions. It also integrates seamlessly with other tools, such as databases and cloud services, enabling full-stack development.

5. Portability:
   - Python is cross-platform and can run on any operating system, including Windows, macOS, and Linux. This portability makes it a go-to solution for projects that need to be deployed in diverse environments.

6. Community and Support:
   - Python’s large, active community ensures constant growth and improvement. With thousands of packages and a vast amount of documentation available online, Python offers robust support for developers at all experience levels.
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
Java, developed by Sun Microsystems and released in 1995, was designed to address the challenges of distributed computing. It introduced the revolutionary concept of "Write Once, Run Anywhere," thanks to its use of the Java Virtual Machine (JVM). This allowed Java applications to run on any device, regardless of the underlying hardware or operating system.

Java quickly became the go-to language for enterprise-level applications due to its security features and robust performance. Its ecosystem grew with the creation of frameworks like Spring and Hibernate, which streamlined enterprise software development. Java’s continued growth in mobile development (especially Android) and cloud computing has ensured its position as one of the most widely used programming languages in the world.
"""
            )
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Platform Independence:
   - The JVM allows Java programs to run on any system with a Java runtime environment, offering a high degree of portability.

2. Object-Oriented:
   - Java is inherently object-oriented, promoting code reuse and modular programming through principles like inheritance, polymorphism, and encapsulation.

3. Robust Ecosystem:
   - Frameworks such as Spring and Hibernate allow Java to be used in a wide range of applications, from enterprise software to web services.

4. Memory Management:
   - Automatic garbage collection and memory management simplify development and reduce the risk of memory leaks.

5. Multithreading:
   - Built-in support for multithreading enables efficient handling of simultaneous tasks, making Java ideal for high-performance applications.
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
C, created by Dennis Ritchie in 1972 at Bell Labs, is one of the oldest and most influential programming languages. It was designed for system programming and as a tool to rewrite the UNIX operating system. C's power comes from its ability to interact directly with hardware and its minimalistic design, which gives developers fine-grained control over system resources.

Although C is considered low-level compared to many modern languages, it provides great portability, running efficiently on almost every machine. Over time, C became the foundation for many other languages, including C++, Java, and Python. Its role in the development of operating systems, embedded systems, and performance-critical applications remains crucial today.
"""
            )
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Low-level Memory Access:
   - C gives developers the ability to manipulate memory directly, using pointers and references, which is key for performance-critical applications.

2. Portability:
   - C code can be compiled and executed on virtually any system with minimal changes, making it the language of choice for cross-platform development.

3. Procedural Programming:
   - C follows a procedural paradigm, emphasizing structured programming and modularity, making it suitable for developing efficient algorithms.

4. Performance:
   - C is one of the fastest programming languages, enabling developers to write highly optimized code that runs with minimal overhead.

5. Efficiency:
   - With no runtime system and very few abstractions, C programs tend to be smaller and more efficient in terms of both time and space.
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
C++, developed by Bjarne Stroustrup in 1985, is an extension of the C programming language. C++ added object-oriented programming features to C, allowing for more complex software systems while still retaining C’s high performance and efficiency. Its powerful combination of procedural and object-oriented features made it widely popular in systems programming and software development.

C++ quickly became the language of choice for performance-critical applications such as game engines, real-time systems, and large-scale software development. Over the years, C++ has evolved with the introduction of new features, including templates, smart pointers, and concurrency models, allowing it to meet the demands of modern software development.
"""
            )
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Object-Oriented Programming:
   - C++ supports object-oriented programming, including features like inheritance, polymorphism, and encapsulation, which help organize complex systems.

2. Performance:
   - C++ compiles directly to machine code, which gives it unparalleled performance for resource-intensive applications like video games and simulations.

3. Advanced Features:
   - C++ includes templates for generic programming, allowing for reusable and type-safe code.

4. Memory Management:
   - C++ provides manual memory management through pointers, allowing developers to control memory allocation and deallocation with great precision.

5. Standard Template Library (STL):
   - C++ includes a rich library of data structures and algorithms (STL), providing efficient implementations of commonly used structures like vectors, stacks, and maps.
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
Ruby, created in 1995 by Yukihiro Matsumoto, emphasizes developer happiness and productivity. Ruby on Rails, its web framework, made Ruby one of the top choices for building web applications. Its philosophy is to make programming more enjoyable and intuitive, which has made it particularly popular in startups and among developers who want to quickly prototype and build software.

Ruby's focus on simplicity and flexibility makes it particularly appealing for developers who want to write clean and maintainable code. Its elegant syntax and powerful built-in libraries provide a high level of abstraction, allowing developers to concentrate on solving problems rather than managing the language's complexity.
"""
            )
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Object-oriented Everything:
   - Ruby is a purely object-oriented language where every value is treated as an object. This makes the language highly flexible and expressive.

2. Dynamic Typing:
   - Ruby uses dynamic typing, allowing for flexible and less verbose code, where types are determined at runtime.

3. Metaprogramming:
   - Ruby supports metaprogramming, allowing the creation of dynamic code that can generate or modify itself during runtime, enabling powerful design patterns.

4. Ecosystem:
   - Ruby has a vibrant ecosystem, particularly with Ruby on Rails, which has been used to build some of the world’s most popular web applications, including GitHub and Shopify.
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
JavaScript was created by Brendan Eich in 1995 during his time at Netscape. Initially designed as a scripting language to add interactivity to web pages, JavaScript quickly became the backbone of dynamic web content. It was initially called Mocha, later renamed to LiveScript, and finally JavaScript to capitalize on the popularity of Java at the time.

Since its inception, JavaScript has evolved into one of the most powerful and versatile programming languages. It is now used for both front-end and back-end development, thanks to technologies like Node.js, and it supports modern features like asynchronous programming and modules. Its ubiquity across the web makes JavaScript a fundamental language for web developers.
"""
            )
            
            accessibilitySection(
                title: "Technical Features",
                content: """
1. Event-driven Programming:
   - JavaScript's event-driven nature allows developers to build responsive, interactive web pages that react to user actions.

2. Asynchronous Programming:
   - With the introduction of Promises and async/await, JavaScript allows for non-blocking, scalable applications that perform well under load.

3. Cross-platform:
   - JavaScript runs on almost every platform, from browsers to mobile devices, and has become the language of choice for web and mobile apps alike.

4. Ecosystem:
   - JavaScript has a thriving ecosystem, with frameworks like React, Angular, and Vue.js dominating front-end development, while Node.js powers back-end services.

5. Modern Syntax:
   - ES6 introduced significant improvements, including arrow functions, classes, template literals, and destructuring, which make JavaScript more powerful and concise.
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
