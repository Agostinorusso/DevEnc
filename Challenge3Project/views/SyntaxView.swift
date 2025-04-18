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
        VStack(alignment: .leading, spacing: 20) {
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
                SectionView(title: "Unavailable", content: "Syntax reference for \(language.name) is not available.")
            }
        }
        .padding()
        .navigationTitle("\(language.name) Syntax")
    }
}


// MARK: - Swift
private var swiftSyntax: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Variable Declaration", content: "var name: String = \"Swift\"")
        SectionView(title: "Function Definition", content: "func greet(name: String) -> String {\n    return \"Hello, \\(name)!\"\n}")
        SectionView(title: "Conditional Statement", content: "if age >= 18 {\n    print(\"Adult\")\n} else {\n    print(\"Minor\")\n}")
    }
}

// MARK: - Python
private var pythonSyntax: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Variable Declaration", content: "name = \"Python\"")
        SectionView(title: "Function Definition", content: "def greet(name):\n    return f\"Hello, {name}!\"")
        SectionView(title: "Conditional Statement", content: "if age >= 18:\n    print(\"Adult\")\nelse:\n    print(\"Minor\")")
    }
}

// MARK: - Java
private var javaSyntax: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Variable Declaration", content: "String name = \"Java\";")
        SectionView(title: "Function Definition", content: "public String greet(String name) {\n    return \"Hello, \" + name + \"!\";\n}")
        SectionView(title: "Conditional Statement", content: "if (age >= 18) {\n    System.out.println(\"Adult\");\n} else {\n    System.out.println(\"Minor\");\n}")
    }
}

// MARK: - C
private var cSyntax: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Variable Declaration", content: "char name[] = \"C\";")
        SectionView(title: "Function Definition", content: "char* greet(char* name) {\n    static char message[100];\n    sprintf(message, \"Hello, %s!\", name);\n    return message;\n}")
        SectionView(title: "Conditional Statement", content: "if (age >= 18) {\n    printf(\"Adult\\n\");\n} else {\n    printf(\"Minor\\n\");\n}")
    }
}

// MARK: - C++
private var cppSyntax: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Variable Declaration", content: "std::string name = \"C++\";")
        SectionView(title: "Function Definition", content: "std::string greet(std::string name) {\n    return \"Hello, \" + name + \"!\";\n}")
        SectionView(title: "Conditional Statement", content: "if (age >= 18) {\n    std::cout << \"Adult\" << std::endl;\n} else {\n    std::cout << \"Minor\" << std::endl;\n}")
    }
}

// MARK: - Ruby
private var rubySyntax: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Variable Declaration", content: "name = \"Ruby\"")
        SectionView(title: "Function Definition", content: "def greet(name)\n  \"Hello, #{name}!\"\nend")
        SectionView(title: "Conditional Statement", content: "if age >= 18\n  puts \"Adult\"\nelse\n  puts \"Minor\"\nend")
    }
}

// MARK: - JavaScript
private var javascriptSyntax: some View {
    VStack(alignment: .leading, spacing: 16) {
        SectionView(title: "Variable Declaration", content: "let name = \"JavaScript\";")
        SectionView(title: "Function Definition", content: "function greet(name) {\n    return `Hello, ${name}!`;\n}")
        SectionView(title: "Conditional Statement", content: "if (age >= 18) {\n    console.log(\"Adult\");\n} else {\n    console.log(\"Minor\");\n}")
    }
}
