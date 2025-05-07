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
            case "C#":
                csharpDictionary
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
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                Swift was introduced by Apple in 2014 at the Worldwide Developers Conference (WWDC) as a new programming language aimed at replacing Objective-C for iOS, macOS, watchOS, and tvOS development. Developed by Chris Lattner and his team at Apple, Swift was designed to be modern, fast, and safe, offering a clean syntax and innovative features to enhance the coding experience. It was created with the goal of providing a more approachable language for developers while maintaining the performance and scalability required for large-scale apps. Since its release, Swift has continued to evolve with new features and improvements, becoming the primary language for iOS and macOS development.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. Modern Syntax: Swift offers a concise, readable syntax that is easier to write and maintain than its predecessor, Objective-C. It uses type inference, optionals, closures, and powerful error handling, which all contribute to cleaner code.
                
                2. Object-Oriented and Functional Programming: Swift supports both object-oriented and functional programming paradigms. This allows developers to choose the most appropriate programming model based on the problem they are solving.
                
                3. Automatic Memory Management: Swift uses Automatic Reference Counting (ARC) to manage memory automatically, ensuring that memory is released when objects are no longer needed.
                
                4. Safety and Performance: Swift was designed with safety in mind. Its strong typing system helps avoid common errors like null pointer exceptions, while the language also offers performance comparable to C++.
                
                5. Open Source: Since 2015, Swift has been open source, which has led to a growing community of developers contributing to its development and expanding its ecosystem. Swift is now cross-platform and can be used on Linux and other platforms in addition to Apple’s ecosystem.
                
                6. Playgrounds: Swift includes interactive playgrounds, allowing developers to write code and see results immediately, which is particularly useful for experimenting with algorithms and prototypes.
                
                7. Interoperability with Objective-C: Swift is compatible with Objective-C, meaning developers can integrate Swift code into existing Objective-C codebases without a complete rewrite.
                
                8. Used in iOS, macOS, watchOS, and tvOS: Swift is the primary language used to develop applications for Apple's platforms, including iPhone, iPad, Apple Watch, and Apple TV.
                
                9. SwiftUI: Apple introduced SwiftUI as a declarative framework for building user interfaces in Swift, making it easier and faster to create UI elements that adapt to different screen sizes and devices.
                
                10. Error Handling: Swift uses a powerful error handling model, including try, catch, and throw, to handle errors in a more structured and readable way.
                
                11. Swift Package Manager: A tool for managing Swift code dependencies. It helps developers easily integrate third-party libraries and frameworks into their Swift projects.
                
                12. Concurrency: Swift has built-in support for concurrency with features like async/await, which makes it easier to write concurrent code without the complexities of managing threads manually.
                
                13. Cross-Platform: Swift has gained traction outside of Apple's ecosystem as well, with tools like the Vapor web framework for building web servers and mobile apps for Android, making Swift a viable option for more platforms than just Apple products.
                
                14. Swift for Machine Learning: With the introduction of CoreML and TensorFlow support, Swift has become an important language for machine learning on iOS devices, enabling powerful on-device AI and ML models to run efficiently.
                """
            )
        }
        .padding()
    }
}


// MARK: - Python
private var pythonDictionary: some View {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                Python was created by Guido van Rossum and first released in 1991. It was designed to be an easy-to-read, high-level programming language with an emphasis on code readability. Python's simple syntax and dynamic typing make it an excellent choice for both beginners and experienced developers. Initially, Python was intended as a general-purpose language, and over time, it has become one of the most popular languages in the world for web development, scientific computing, artificial intelligence, and data analysis. The language is known for its extensive standard library and the ability to integrate with other languages and tools.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. High-Level Language: Python is an interpreted, high-level language, which means it is easy to write and read, allowing developers to focus more on solving problems than dealing with low-level implementation details.
                
                2. Object-Oriented Programming (OOP): Python supports object-oriented programming, allowing developers to define classes and objects to create more modular and reusable code.
                
                3. Dynamically Typed: Python is dynamically typed, meaning you don’t have to explicitly declare variable types. The interpreter automatically determines the type during runtime.
                
                4. Extensive Standard Library: Python comes with a rich set of modules and libraries that make it easy to perform various tasks, such as file I/O, web development, database management, and network programming.
                
                5. Cross-Platform: Python is cross-platform, meaning it runs on multiple operating systems, including Windows, macOS, and Linux. You can write Python code once and run it anywhere.
                
                6. Open Source: Python is open-source and has a large, active community of developers who contribute to its growth. This makes it one of the most supported languages in the world.
                
                7. Interpreted Language: Python is interpreted, which means code is executed line by line, making it easier to debug and test during development.
                
                8. Popular Frameworks: Python has several popular frameworks and libraries for web development (e.g., Django, Flask), scientific computing (e.g., NumPy, SciPy), and data analysis (e.g., Pandas, Matplotlib).
                
                9. Easy Syntax: Python’s syntax is often described as simple and intuitive. This makes Python a great language for beginners, as its syntax is close to English and eliminates the need for excessive punctuation.
                
                10. Scripting and Automation: Python is frequently used for scripting tasks and automation. With Python, you can automate repetitive tasks like file renaming, web scraping, and data manipulation.
                
                11. Functional Programming: Python supports functional programming with features like lambda expressions, map, filter, and reduce.
                
                12. Python for Data Science: Python has become the go-to language for data science and machine learning, with libraries like TensorFlow, Keras, and scikit-learn enabling developers to build complex models and systems.
                
                13. Python for Web Development: Python is widely used for building web applications, especially with frameworks like Django and Flask. Python’s ease of use and quick development cycle make it a popular choice for startups and enterprises alike.
                """
            )
        }
        .padding()
    }
}

// MARK: - Java
private var javaDictionary: some View {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                Java was originally developed by James Gosling and Mike Sheridan at Sun Microsystems in 1991 and was released in 1995. The language was designed with the goal of being platform-independent, allowing applications to run on any device with a Java Virtual Machine (JVM). Initially, it was called Oak, but it was later renamed to Java, inspired by Java coffee, which the developers often drank. Java became immensely popular due to its "Write Once, Run Anywhere" philosophy, making it a favorite for building cross-platform applications. Java has evolved over the years and remains one of the most widely used programming languages for enterprise applications, Android development, and server-side technologies.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. Object-Oriented: Java follows the principles of object-oriented programming (OOP), which includes encapsulation, inheritance, and polymorphism. This allows for the creation of modular and reusable code.
                
                2. Platform Independence: Java's slogan "Write Once, Run Anywhere" refers to the fact that Java applications can run on any platform that has a JVM installed, making Java an excellent choice for cross-platform development.
                
                3. Strongly Typed: Java is a statically typed language, meaning that variable types must be explicitly declared at compile-time. This helps catch errors early in the development process.
                
                4. Multithreading Support: Java provides built-in support for multithreading, allowing developers to write programs that can perform multiple tasks simultaneously, improving performance and responsiveness.
                
                5. Rich API: Java comes with a vast set of libraries and frameworks, such as JavaFX for GUI development, Java EE (Enterprise Edition) for enterprise applications, and Spring for building robust web applications.
                
                6. Memory Management: Java uses automatic garbage collection, which helps manage memory by reclaiming unused objects and preventing memory leaks, making it easier for developers to focus on the logic of their applications.
                
                7. Security: Java has built-in security features, such as bytecode verification and the security manager, to ensure that Java applications are safe to run in various environments, especially in web browsers or applets.
                
                8. Automatic Exception Handling: Java has a robust exception handling mechanism that allows developers to manage errors gracefully using try-catch blocks. This helps ensure that programs don't crash unexpectedly.
                
                9. Portability: Java applications can run on various platforms, including Windows, macOS, and Linux, as long as the platform supports the JVM.
                
                10. High Performance: Java is often perceived as slower than languages like C, but its performance has improved over the years with Just-In-Time (JIT) compilation and optimizations in the JVM.
                
                11. Community and Support: Java has a large and active community, providing extensive documentation, frameworks, tools, and support. The community contributes to making Java one of the most mature and stable programming languages in use today.
                
                12. Java for Web Development: Java is commonly used for building dynamic and interactive websites and web applications. Java-based frameworks like Spring MVC, JavaServer Faces (JSF), and Hibernate are widely used for server-side development.
                
                13. Java for Android Development: Java has been the primary language for Android app development for many years. Although Kotlin has gained popularity, Java remains an important part of the Android ecosystem.
                
                14. Java for Big Data: Java is often used in big data technologies such as Apache Hadoop and Apache Spark due to its scalability and performance.
                """
            )
        }
        .padding()
    }
}

// MARK: - C
private var cDictionary: some View {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                The C programming language was created by Dennis Ritchie in 1972 at AT&T Bell Labs as an evolution of the B programming language. Originally, C was developed as a system programming language for writing operating systems and system software. Its first major success was in the development of the Unix operating system, which was written in C and contributed to the language's widespread adoption. C became one of the most influential programming languages, forming the basis for many modern languages, including C++, C#, and even Java. Its simplicity and efficiency made it a preferred choice for operating systems, embedded systems, and high-performance applications, cementing its place in software development history.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. Low-Level Access: C provides low-level access to memory, making it suitable for system-level programming and hardware-related tasks.
                
                2. Procedural Programming: C follows the procedural programming paradigm, which means the focus is on functions and procedures, allowing for structured and modular code.
                
                3. Efficiency and Performance: C is known for its high performance and efficiency. It is often used in applications where performance is critical, such as operating systems and embedded systems.
                
                4. Portability: C code can be compiled and executed on any platform with minimal modifications, making it a cross-platform language.
                
                5. Pointers: C provides pointers, which allow direct access to memory locations, enabling developers to manipulate data at a low level and optimize performance.
                
                6. Standard Library: C comes with a standard library (the C Standard Library) that provides essential functions for tasks like input/output, memory management, and string manipulation.
                
                7. Structs and Unions: C supports the use of structs and unions, which allow developers to define custom data types and group related variables together.
                
                8. Function Pointers: C supports function pointers, allowing functions to be passed as arguments or stored in data structures, which enables flexible programming techniques.
                
                9. Efficient Memory Management: C allows developers to manage memory manually using malloc() and free() functions, giving them fine-grained control over memory allocation and deallocation.
                
                10. Simplicity: One of the defining features of C is its simplicity. It has a small set of keywords and syntax, making it a relatively easy language to learn and use compared to more complex languages.
                
                11. Popular for Embedded Systems: C is widely used in embedded systems, where resources like memory and processing power are limited. It is commonly used to program microcontrollers and embedded hardware.
                
                12. Extensive Use in Compilers: Many modern compilers, including those for C++ and other languages, are written in C, making it an important tool for compiler development.
                
                13. Direct Hardware Access: C allows direct interaction with hardware components, which is why it is widely used in device drivers and other hardware-related applications.
                
                14. C for Game Development: C has historically been used for game development, especially in the creation of game engines and game-related software, where performance and low-level control are important.
                """
            )
        }
        .padding()
    }
}

// MARK: - C++
private var cppDictionary: some View {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                C++ was created by Bjarne Stroustrup in 1979 at AT&T Bell Labs as an extension of the C programming language. Initially called "C with Classes," C++ was designed to provide object-oriented features while retaining the efficiency and low-level capabilities of C. The language was intended to help developers write large, complex systems while maintaining performance. C++ introduced features like classes, inheritance, and polymorphism, making it one of the first widely used object-oriented programming languages. It quickly became popular in a variety of fields, including systems software, game development, and applications requiring high performance. C++ has influenced many modern languages and remains a powerful, versatile language for both low-level and high-level programming.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. Object-Oriented Programming (OOP): C++ introduced the concept of classes and objects, enabling developers to organize code into reusable components with inheritance, polymorphism, and encapsulation.
                
                2. Efficiency and Performance: C++ retains the performance benefits of C, allowing developers to write highly efficient code for systems programming, real-time applications, and game development.
                
                3. Low-Level Memory Access: Like C, C++ provides low-level memory access, enabling fine-grained control over memory allocation and deallocation, which is essential for performance-critical applications.
                
                4. Template Programming: C++ introduced templates, which allow developers to write generic, type-safe code that can work with any data type. This feature is essential for writing reusable libraries and frameworks.
                
                5. Exception Handling: C++ provides exception handling through try, catch, and throw keywords, enabling developers to handle errors and exceptions in a structured manner and improving the robustness of applications.
                
                6. Multiple Inheritance: Unlike many object-oriented languages, C++ supports multiple inheritance, allowing a class to inherit from more than one base class.
                
                7. Standard Template Library (STL): C++ includes the Standard Template Library, which provides commonly used data structures (like vectors, lists, and maps) and algorithms (like sorting and searching) in a generic and efficient way.
                
                8. Operator Overloading: C++ allows developers to overload operators, enabling custom behavior for built-in operators (like +, -, etc.) when applied to user-defined types.
                
                9. Function Overloading: C++ supports function overloading, which allows multiple functions to have the same name but different parameter types, making the code more readable and maintainable.
                
                10. RAII (Resource Acquisition Is Initialization): C++ emphasizes the use of constructors and destructors to manage resources such as memory and file handles, making it easier to handle resource cleanup and reduce memory leaks.
                
                11. Direct Hardware Access: C++ provides direct access to hardware components, making it useful for system programming, embedded systems, and game engines.
                
                12. Portability: C++ code can be compiled on multiple platforms with minimal modification, making it a cross-platform language.
                
                13. Popular for Game Development: C++ is widely used in game development due to its performance, low-level access, and powerful object-oriented features. Game engines like Unreal Engine are written in C++.
                
                14. Modern C++ (C++11 and beyond): Recent updates to the C++ standard have introduced features like smart pointers, lambdas, and range-based for loops, making the language more modern, safer, and easier to use.
                """
            )
        }
        .padding()
    }
}

// MARK: - Ruby
private var rubyDictionary: some View {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                Ruby was created in 1993 by Yukihiro "Matz" Matsumoto in Japan, with the aim of making programming more enjoyable and productive. It was designed to be a more human-friendly language, with a focus on simplicity and elegance. Ruby was influenced by a number of programming languages, including Perl, Smalltalk, and Lisp, and it was designed to combine the best features of these languages while avoiding their shortcomings. Ruby was first released in 1995 and quickly gained popularity, especially after the introduction of the Ruby on Rails framework in the early 2000s. Ruby on Rails revolutionized web development by emphasizing convention over configuration, making it easier to develop complex web applications. Today, Ruby is widely used in web development, scripting, and automation tasks, and it continues to enjoy a strong community of developers who prioritize clean, readable code.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. Object-Oriented: Ruby is a pure object-oriented programming language, meaning everything in Ruby is an object, including numbers and even classes themselves.
                
                2. Dynamic Typing: Ruby uses dynamic typing, allowing developers to write flexible and expressive code without the need for explicit type declarations. This feature promotes rapid prototyping and ease of use.
                
                3. Duck Typing: Ruby follows the principle of "duck typing," which means that the type of an object is determined by its behavior (methods and properties) rather than its class. This allows for more flexibility and less rigid code.
                
                4. Garbage Collection: Ruby has automatic garbage collection, which helps manage memory by reclaiming unused objects and reducing the likelihood of memory leaks in programs.
                
                5. Blocks and Iterators: Ruby uses blocks (anonymous functions) and iterators to simplify looping and code organization. This makes it easy to pass chunks of code as arguments to methods, leading to more readable and expressive code.
                
                6. Flexible Syntax: Ruby's syntax is clean and flexible, allowing for expressive and elegant code. It borrows features from several languages, including Perl (regular expressions) and Smalltalk (message passing).
                
                7. Metaprogramming: Ruby supports metaprogramming, which allows developers to write code that manipulates other code. This feature allows for powerful abstractions, enabling developers to write more generic and reusable code.
                
                8. Ruby on Rails: Ruby on Rails (RoR) is a widely used framework for building web applications. It emphasizes convention over configuration, making it easier for developers to build web apps quickly by following standardized conventions and patterns.
                
                9. Open Source: Ruby is an open-source language with a strong community of contributors who develop and maintain a wide range of libraries (gems) to extend Ruby's functionality. This makes Ruby a highly extensible and community-driven language.
                
                10. Cross-Platform: Ruby runs on many operating systems, including Windows, macOS, and Linux, and can be used for web development, scripting, and automation across different platforms.
                
                11. Eager to Learn: Ruby's focus on simplicity and readability makes it an excellent language for beginners, offering a gentle learning curve while still being powerful enough for advanced development.
                
                12. Strong Community: Ruby has a passionate and welcoming community of developers who contribute to an active ecosystem of libraries, frameworks, and resources for learning and development.
                
                13. RubyGems: Ruby's package manager, RubyGems, allows developers to easily share and install libraries (gems). This ecosystem provides access to thousands of pre-built packages for a variety of use cases, from web frameworks to data analysis tools.
                
                14. Functional Programming Support: Ruby allows developers to write functional code by supporting features like first-class functions, higher-order functions, and closures, even though it is primarily object-oriented.
                """
            )
        }
        .padding()
    }
}


// MARK: - JavaScript
private var javascriptDictionary: some View {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                JavaScript was created in 1995 by Brendan Eich at Netscape Communications Corporation. Initially, it was called Mocha, then changed to LiveScript, and finally renamed to JavaScript. It was developed as a client-side scripting language to make web pages more interactive and dynamic. JavaScript's initial goal was to add simple interactivity to static HTML pages, but over time it evolved into a full-fledged language capable of both client-side and server-side programming. The release of the Netscape Navigator 2.0 browser in 1995 marked the beginning of JavaScript's widespread use on the web. 

                JavaScript gained immense popularity with the rise of web applications and was instrumental in the development of Ajax (Asynchronous JavaScript and XML), which allows web pages to update asynchronously without refreshing the entire page. The introduction of the ECMAScript standard in 1997 helped standardize JavaScript, leading to its continuous evolution. Over the years, JavaScript has been transformed into one of the core technologies of web development, alongside HTML and CSS, and is used for both front-end and back-end development. With the advent of Node.js in 2009, JavaScript became a viable choice for server-side programming as well, enabling developers to use a single language across the entire web stack. Today, JavaScript is supported by all modern web browsers and has become the backbone of web development.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. High-Level Language: JavaScript is a high-level language, meaning it abstracts many complex details of the computer's operations, allowing developers to write code without worrying about memory management or low-level system details.

                2. Event-Driven Programming: JavaScript follows an event-driven model, meaning that most of its behavior is driven by events, such as user interactions (clicks, key presses, etc.) or system-generated events (e.g., timers). This allows developers to write highly interactive applications.

                3. Dynamic Typing: JavaScript is dynamically typed, meaning that variable types do not need to be explicitly declared. The type of a variable is determined at runtime based on the assigned value, allowing for more flexibility and less verbose code.

                4. Object-Oriented and Functional: JavaScript supports both object-oriented and functional programming paradigms. Developers can create and manipulate objects using prototype-based inheritance or write functions as first-class citizens, passing them around as arguments or returning them from other functions.

                5. Asynchronous Programming: JavaScript supports asynchronous programming through callbacks, promises, and the async/await syntax. This allows JavaScript to handle operations like network requests, file I/O, and other time-consuming tasks without blocking the execution of other code.

                6. Single-Threaded with Event Loop: JavaScript runs on a single thread and uses an event loop to manage asynchronous tasks. The event loop allows the program to handle multiple tasks without blocking the main thread, making it more efficient in handling I/O-bound operations.

                7. Cross-Platform: JavaScript runs in all modern browsers and is supported on multiple operating systems, including Windows, macOS, and Linux. With Node.js, JavaScript can also run on the server, enabling cross-platform development for both front-end and back-end.

                8. Rich Ecosystem: JavaScript has a large and vibrant ecosystem of libraries, frameworks, and tools that make development faster and more efficient. Libraries like jQuery, React, and Angular have made building complex web applications more accessible, while tools like Webpack, Babel, and ESLint help optimize the development workflow.

                9. Front-End and Back-End Development: JavaScript is used for both front-end and back-end development. On the front-end, it powers dynamic user interfaces and handles DOM manipulation. On the back-end, JavaScript, through Node.js, allows developers to build server-side applications, APIs, and even entire web services.

                10. Closures and Scopes: JavaScript has first-class functions and supports closures. A closure is a function that "remembers" the scope in which it was created, even if it's executed outside that scope. This feature enables powerful techniques like data encapsulation and currying.

                11. Modern Features (ES6+): JavaScript has evolved significantly with the release of ECMAScript 6 (ES6) and subsequent versions. These modern features include arrow functions, classes, template literals, destructuring, and modules, which make JavaScript code more concise, readable, and maintainable.

                12. Large Developer Community: JavaScript has one of the largest developer communities in the world. This large community ensures that JavaScript remains constantly updated, and there is an abundance of tutorials, resources, and libraries available to developers.

                13. DOM Manipulation: JavaScript is often used to manipulate the Document Object Model (DOM), which represents the structure of an HTML document. JavaScript allows developers to dynamically modify the content, structure, and style of web pages, making it essential for creating interactive web experiences.

                14. Web APIs: JavaScript interacts seamlessly with various web APIs, such as the Fetch API for making network requests, the Web Storage API for saving data locally, and the Canvas API for drawing graphics. These APIs enable JavaScript to interact with the browser environment and extend its capabilities.
                """
            )
        }
        .padding()
    }
}

// MARK: - c#
private var csharpDictionary: some View {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(
                title: "Historical Background",
                content: """
                C# (pronounced "C-sharp") was developed by Microsoft in the early 2000s as part of the .NET framework initiative. It was designed by Anders Hejlsberg, the same person behind the creation of Turbo Pascal and Delphi. C# was introduced in 2000 and became a central language for .NET development, offering a modern, object-oriented alternative to C++ and Java. Initially, it was created to serve as the primary language for building Windows applications, but over time, it has grown into a versatile, cross-platform language with strong support for web, mobile, and game development.

                C#’s design was influenced by C, C++, and Java, offering a syntax that is familiar to many developers but with enhancements aimed at modern programming practices. The language was developed to be simple, secure, and robust, providing features like garbage collection, type safety, and exception handling, which were intended to make programming more reliable and efficient.

                With the advent of .NET Core and later .NET 5 and 6, C# has evolved to become a cross-platform language, allowing developers to build applications that run on Windows, macOS, and Linux. The introduction of Xamarin made C# a popular choice for mobile app development, while Unity has made C# the go-to language for game development. Today, C# is a key player in the development of enterprise applications, web services, desktop software, and games, and it continues to receive updates from Microsoft to support modern development practices.
                """
            )

            SectionView(
                title: "Technical Features",
                content: """
                1. Object-Oriented: C# is a fully object-oriented programming language, meaning it focuses on creating classes and objects, promoting code reusability and modular design. It supports features like inheritance, polymorphism, encapsulation, and abstraction.

                2. Type-Safe: C# is a statically typed language, meaning that type checking is done at compile-time, which helps catch errors early. The language is also type-safe, which means it enforces strict rules on type conversions, preventing errors related to type mismatches.

                3. Garbage Collection: C# features an automatic garbage collection system, which automatically reclaims memory occupied by objects that are no longer in use. This reduces the chances of memory leaks and makes memory management easier for developers.

                4. Exception Handling: C# provides robust exception handling mechanisms, allowing developers to write reliable code that can handle runtime errors gracefully. With try-catch blocks, developers can catch exceptions and handle errors in a controlled manner.

                5. Cross-Platform: With the introduction of .NET Core, C# has become a cross-platform language, enabling developers to build applications that can run on Windows, macOS, and Linux. This makes C# a versatile choice for developers targeting multiple platforms.

                6. LINQ (Language Integrated Query): C# introduced LINQ, a feature that allows developers to query collections of data using SQL-like syntax directly in the language. This feature simplifies working with data and makes it easier to write complex queries in a readable and concise way.

                7. Modern Features (C# 8.0 and Beyond): With the release of C# 8.0, the language introduced several modern programming features such as nullable reference types, asynchronous streams, and switch expressions. These improvements make C# more efficient, expressive, and safer to use.

                8. Asynchronous Programming: C# provides first-class support for asynchronous programming with the `async` and `await` keywords, allowing developers to write non-blocking, high-performance code. Asynchronous programming is useful for tasks like file I/O, network requests, and long-running computations.

                9. Strong Ecosystem: C# is supported by the .NET ecosystem, which provides a wide range of libraries, frameworks, and tools for building various types of applications. From web applications with ASP.NET to desktop applications with Windows Forms and WPF, C# developers have access to a comprehensive set of resources.

                10. Game Development with Unity: One of C#'s most popular uses is in game development with the Unity game engine. Unity's support for C# allows developers to write game logic, interact with game objects, and implement gameplay features, making C# one of the most commonly used languages for creating games across platforms.

                11. Delegates and Events: C# features delegates, which are type-safe function pointers, allowing developers to pass methods as parameters or define callback mechanisms. Events are based on delegates and are used to implement event-driven programming, a common paradigm in GUI and web applications.

                12. Powerful IDE Support: C# is backed by excellent IDE support, with Visual Studio being the most widely used Integrated Development Environment for writing C# code. Visual Studio offers features like IntelliSense, debugging tools, refactoring support, and integration with version control systems.

                13. Cross-Platform Mobile Development: Through Xamarin, C# allows developers to write cross-platform mobile apps for iOS and Android using a single codebase. Xamarin abstracts away platform-specific APIs, making it possible to build mobile apps that work seamlessly across multiple devices.

                14. Rich Standard Library: C# comes with a comprehensive standard library (the .NET Standard Library) that provides built-in functionality for common tasks such as file handling, data serialization, networking, and UI development. This allows developers to focus on business logic without having to reinvent the wheel.
                """
            )
        }
        .padding()
    }
}

