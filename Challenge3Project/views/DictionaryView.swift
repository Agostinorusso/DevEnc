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
                }

            }
            .padding()
        }
        .navigationTitle("Dictionary")
    }
    
    // Swift Description
    private var swiftContent: some View {
        VStack(alignment: .leading, spacing: 16) {
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
    }
    
    // Python Description
    private var pythonContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Historical Background
            VStack(alignment: .leading, spacing: 8) {
                Text("Historical Background")
                    .font(.headline)
                    .foregroundColor(.blue)
                Text("""
Python is a high-level, interpreted programming language created by Guido van Rossum and first released in 1991. Its design emphasizes readability and simplicity, making it a favorite among both beginners and professionals. Named after the British comedy group Monty Python, Python was designed to be fun and approachable while supporting powerful programming paradigms.
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
1. Ease of Learning:
   - Readable syntax mimicking natural language.
   - Excellent for prototyping and rapid development.

2. Multi-Paradigm Support:
   - Object-oriented, procedural, and functional programming paradigms.

3. Libraries and Ecosystem:
   - Rich standard library and third-party frameworks for data science, AI, web development, and more.
   - Popular tools like NumPy, Flask, Django, TensorFlow, and Jupyter Notebooks.

4. Portability and Platform Independence:
   - Seamlessly runs on multiple operating systems due to interpreter-based execution.

5. Integration with Other Languages:
   - Python's inter-language operability enables integration with C, C++, Java, and .NET.
""")
                    .font(.body)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}
 
// JavaScript Content
    private var javascriptContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Historical Background")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
JavaScript, created by Brendan Eich in 1995, was initially designed to add interactivity to web pages within the Netscape Navigator browser. Developed in just 10 days, it became a cornerstone of web development. Despite its rushed origins, JavaScript has grown into a versatile and powerful programming language that runs on virtually all web browsers and powers dynamic web applications.
            
In the early 2000s, frameworks like jQuery simplified JavaScript development. The introduction of Node.js in 2009 extended JavaScript to the server side, making it a full-stack programming language. Today, JavaScript is supported by powerful engines such as Google’s V8, and its ecosystem includes numerous libraries and frameworks like React, Angular, and Vue.js, which have revolutionized front-end development.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
            
            Text("Technical Features")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
1. Event-driven Programming:
   - JavaScript’s event loop handles asynchronous events, making it ideal for interactive and non-blocking applications.
   
2. Cross-platform Execution:
   - JavaScript code runs seamlessly across different operating systems and browsers.

3. Diverse Ecosystem:
   - Includes tools for front-end (React, Vue.js), back-end (Node.js), and testing (Jest, Mocha).

4. Flexible Syntax:
   - Supports object-oriented, functional, and imperative programming paradigms.

5. Modern Language Features:
   - Includes ES6+ features like classes, promises, and modules for cleaner, more efficient code.

6. Performance:
   - Optimized by modern engines like V8, JavaScript offers high performance, especially in server-side environments.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
        }
    }

    // Java Content
    private var javaContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Historical Background")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
Java, designed by James Gosling at Sun Microsystems, was officially released in 1995. Its core principle, "Write Once, Run Anywhere" (WORA), revolutionized software development by making code portable across operating systems. Java gained early popularity with applets for web browsers and later became the backbone of enterprise applications and Android app development.
            
Over the years, Java has undergone significant evolution, from the introduction of generics in Java 5 to modern features like lambdas and streams in Java 8. Its extensive library ecosystem and compatibility with legacy systems have made Java a critical tool in industries such as finance, healthcare, and retail.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
            
            Text("Technical Features")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
1. Platform Independence:
   - Java programs are compiled into bytecode and executed on the JVM, ensuring cross-platform compatibility.

2. Object-oriented Design:
   - Provides features like inheritance, polymorphism, and encapsulation for modular and reusable code.

3. Extensive Libraries:
   - Includes APIs for networking, data structures, and concurrent programming.

4. Security:
   - Built-in security features like bytecode verification and sandboxing protect against malicious code execution.

5. Scalability:
   - Java supports multithreading and distributed computing for high-performance applications.

6. Popular Frameworks:
   - Spring, Hibernate, and Struts simplify enterprise application development.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
        }
    }

// C Content
    private var cContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Historical Background")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
Developed by Dennis Ritchie at Bell Labs in 1972, the C programming language was created to implement the Unix operating system. It quickly became popular for its efficiency and portability, forming the foundation of many modern programming languages, including C++, Java, and Python.

C’s design is minimalistic, focusing on providing a powerful and flexible language with low-level access to memory and hardware. Its success is attributed to its ability to operate efficiently across various systems, from embedded devices to supercomputers.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
            
            Text("Technical Features")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
1. Low-level Memory Access:
   - C allows direct manipulation of memory using pointers, enabling fine-tuned performance.

2. Portable and Efficient:
   - Code written in C can be compiled on virtually any platform with minimal modifications.

3. Rich Standard Library:
   - Includes functions for input/output operations, string manipulation, and memory management.

4. Procedural Paradigm:
   - C emphasizes structured programming, simplifying code readability and maintainability.

5. Extensibility:
   - The language is modular, allowing developers to create libraries and integrate with assembly code for system-level applications.

6. Ubiquity:
   - C is used in operating systems (Linux, Windows), embedded systems, and game engines, showcasing its versatility.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
        }
    }

    // C++ Content
    private var cppContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Historical Background")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
C++, designed by Bjarne Stroustrup in 1985, is an extension of the C language that introduced object-oriented programming (OOP) concepts. Initially called “C with Classes,” C++ became a versatile and high-performance language widely used in applications ranging from system software to video games.

C++ maintained backward compatibility with C while adding new features like templates, exceptions, and the Standard Template Library (STL). Over the years, the language has evolved significantly, with modern C++ standards (e.g., C++11, C++17, C++20) focusing on developer productivity and performance.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
            
            Text("Technical Features")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
1. Object-oriented Programming:
   - Features like classes, inheritance, and polymorphism enable modular and reusable code.

2. High Performance:
   - Compiles directly to machine code, providing low-level control and efficient execution.

3. Extensive Libraries:
   - Includes the STL, Boost, and other libraries that simplify tasks like algorithms and data structures.

4. Multi-paradigm Support:
   - Supports procedural, functional, and generic programming alongside OOP.

5. Resource Management:
   - Offers RAII (Resource Acquisition Is Initialization) for deterministic resource cleanup.

6. Advanced Features:
   - Includes smart pointers, lambdas, and constexpr for modern programming needs.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
        }
    }

    // Ruby Content
    private var rubyContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Historical Background")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
Ruby, created by Yukihiro “Matz” Matsumoto in 1995, is a dynamic, high-level programming language designed for simplicity and productivity. Influenced by languages like Perl, Smalltalk, and Lisp, Ruby emphasizes human-readable code and developer happiness.

Ruby became widely popular with the release of Ruby on Rails in 2004, a framework that revolutionized web development by promoting convention over configuration and rapid prototyping.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
            
            Text("Technical Features")
                .font(.headline)
                .foregroundColor(.blue)
            Text("""
1. Object-oriented Everything:
   - In Ruby, everything is an object, including numbers and strings, simplifying the language’s syntax and behavior.

2. Dynamic Typing:
   - Developers can write flexible and concise code without declaring variable types.

3. Built-in Garbage Collection:
   - Automatically manages memory, reducing the risk of memory leaks.

4. Metaprogramming:
   - Ruby allows code to be dynamically generated and executed at runtime, enabling highly customizable applications.

5. Rich Ecosystem:
   - Includes frameworks like Ruby on Rails and libraries (gems) for various tasks, from data analysis to web scraping.

6. Developer-centric:
   - Focuses on readability, using an intuitive syntax that resembles natural language.
""")
                .font(.body)
                .multilineTextAlignment(.leading)
        }
    }

