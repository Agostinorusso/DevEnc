//
//  ContentView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import SwiftUICore
import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ProgrammingLanguagesViewModel()

    var body: some View {
        NavigationView {
            VStack {
                // Title
                Text("DevDictionary")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .accessibilityLabel("Dev Dictionary")
                    .accessibilityHint("A list of programming languages with descriptions and syntax")

                // List of Programming Languages
                List(viewModel.programmingLanguages) { language in
                    NavigationLink(
                        destination: ProgrammingLanguageDetailView(language: language, viewModel: viewModel)
                            .accessibilityLabel("Go to details for \(language.name)")) {
                        HStack {
                            // Icon on the left
                            Image(language.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 80) // Adjust size as needed
                                .padding(.trailing, 10)
                                .accessibilityLabel("\(language.name) icon")
                            
                            // Language Name
                            Text(language.name)
                                .font(.headline)
                                .accessibilityLabel(language.name)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}
#Preview {
    ContentView()
}
