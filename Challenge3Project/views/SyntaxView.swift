//
//  SyntaxView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import SwiftUI

struct SyntaxView: View {
    let language: ProgrammingLanguage
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Title with VoiceOver
                Text("\(language.name) Syntax")
                    .font(.title)
                    .fontWeight(.bold)
                    .accessibilityLabel("\(language.name) Syntax Overview")
                    .accessibilityHint("This shows the syntax of \(language.name).")
                
                switch language.name {
                case "Swift":
                    swiftSyntax
                case "Python":
                    pythonSyntax
                case "Java":
                    javaSyntax
                case "C":
                    cSyntax
                case "C++":
                    cppSyntax
                case "Ruby":
                    rubySyntax
                case "JavaScript":
                    javascriptSyntax
                default:
                    Text("Syntax for \(language.name) is not available yet.")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .accessibilityLabel("No syntax available for \(language.name).")
                }
            }
            .padding()
        }
        .navigationTitle("Syntax")
        .accessibilityHint("This screen provides syntax information for various programming languages.")
    }
    
    // Swift Syntax
    private var swiftSyntax: some View {
        syntaxSection(title: "Swift Syntax", elements: [
            "var: Declares a variable.",
            "let: Declares a constant.",
            "func: Defines a function.",
            "if/else: Conditional statements.",
            "for/in: Iterates over a sequence.",
            "while: Creates a while loop.",
            "switch: Performs pattern matching.",
            "class: Defines a class.",
            "struct: Defines a structure.",
            "enum: Defines an enumeration."
        ])
    }
    
    // Python Syntax
    private var pythonSyntax: some View {
        syntaxSection(title: "Python Syntax", elements: [
            "def: Defines a function.",
            "if/elif/else: Conditional statements.",
            "for/in: Iterates over a sequence.",
            "while: Creates a while loop.",
            "class: Defines a class.",
            "import: Imports modules.",
            "lambda: Defines anonymous functions.",
            "with: Context manager for resource management.",
            "try/except: Handles exceptions.",
            "list comprehensions: Creates a list using expressions."
        ])
    }
    
    // JavaScript Syntax
    private var javascriptSyntax: some View {
        syntaxSection(title: "JavaScript Syntax", elements: [
            "var/let/const: Declares variables.",
            "function: Defines a function.",
            "if/else: Conditional statements.",
            "for/of/in: Loops through elements.",
            "while: Creates a while loop.",
            "class: Defines a class.",
            "import/export: Module management.",
            "=>: Arrow functions.",
            "try/catch: Exception handling.",
            "template literals: Embeds expressions in strings using backticks."
        ])
    }
    
    // Java Syntax
    private var javaSyntax: some View {
        syntaxSection(title: "Java Syntax", elements: [
            "class: Defines a class.",
            "public/private/protected: Access modifiers.",
            "static: Defines static methods or variables.",
            "void: Specifies no return value.",
            "if/else: Conditional statements.",
            "for/while/do-while: Loop constructs.",
            "try/catch/finally: Exception handling.",
            "import: Imports packages.",
            "new: Instantiates objects.",
            "System.out.println: Prints to the console."
        ])
    }
    
    // C Syntax
    private var cSyntax: some View {
        syntaxSection(title: "C Syntax", elements: [
            "#include: Includes headers.",
            "int/float/char: Variable declarations.",
            "if/else: Conditional statements.",
            "for/while/do-while: Loop constructs.",
            "switch/case: Multi-way branch.",
            "struct: Defines a structure.",
            "typedef: Creates aliases.",
            "printf/scanf: Input/output functions.",
            "malloc/free: Dynamic memory management.",
            "return: Returns a value from a function."
        ])
    }
    
    // C++ Syntax
    private var cppSyntax: some View {
        syntaxSection(title: "C++ Syntax", elements: [
            "#include: Includes headers.",
            "int/float/double: Variable declarations.",
            "if/else: Conditional statements.",
            "for/while/do-while: Loop constructs.",
            "class: Defines a class.",
            "new/delete: Dynamic memory management.",
            "try/catch: Exception handling.",
            "std::cout/std::cin: Input/output.",
            "template: Defines templates.",
            "namespace: Defines a scope."
        ])
    }
    
    // Ruby Syntax
    private var rubySyntax: some View {
        syntaxSection(title: "Ruby Syntax", elements: [
            "def: Defines a method.",
            "if/elsif/else: Conditional statements.",
            "for/in: Iterates over a collection.",
            "while/until: Loop constructs.",
            "class: Defines a class.",
            "module: Defines a module.",
            "begin/rescue: Exception handling.",
            "require: Imports libraries.",
            "block/yield: Code blocks.",
            "attr_accessor: Creates getter and setter methods."
        ])
    }
    
    // Generic Syntax Section with VoiceOver
    private func syntaxSection(title: String, elements: [String]) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
                .accessibilityLabel(title)
                .accessibilityHint("This section contains \(title).")
            
            ForEach(elements, id: \.self) { element in
                Text("- \(element)")
                    .font(.body)
                    .accessibilityLabel(element)
                    .accessibilityHint("This explains the syntax feature.")
            }
        }
        .padding(.vertical)
    }
}

struct SyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        SyntaxView(language: ProgrammingLanguage(name: "Swift", icon: "swiftCustomIcon"))
    }
}
