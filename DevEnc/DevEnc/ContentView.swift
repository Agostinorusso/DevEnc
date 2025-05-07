//
//  ContentView.swift
//  DevEnc
//
//  Created by Agostino Russo  on 05/05/25.
//
import SwiftUI

struct ContentView: View {
    let languages: [ProgrammingLanguage] = [
        ProgrammingLanguage(name: "Swift", iconName: "swiftCustomIcon"),
        ProgrammingLanguage(name: "Python", iconName: "pythonCustomIcon"),
        ProgrammingLanguage(name: "Java", iconName: "javaCustomIcon"),
        ProgrammingLanguage(name: "C", iconName: "cCustomIcon"),
        ProgrammingLanguage(name: "C++", iconName: "c++CustomIcon"),
        ProgrammingLanguage(name: "Ruby", iconName: "rubyCustomIcon"),
        ProgrammingLanguage(name: "JavaScript", iconName: "javascriptCustomIcon"),
        ProgrammingLanguage(name:"C#", iconName: "csharpCustomIcon")
    ]
    
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 30), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(languages, id: \.name) { language in
                        NavigationLink(destination: ProgrammingLanguageDetailedView(language: language)) {
                            VStack(spacing: 12) {
                                Image(language.iconName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                
                                Text(language.name)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }
                            .frame(width: 120, height: 120)
                            .background(Color(.systemGray6))
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 4)
                        }
                    }
                }
                .padding()
                .navigationTitle("DevDictionary")
            }
        }
    }
}

#Preview {
    ContentView()
}
