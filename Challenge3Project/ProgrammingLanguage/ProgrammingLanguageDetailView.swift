//
//  ProgrammingLanguageDetailView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import SwiftUICore
import SwiftUI

struct ProgrammingLanguageDetailView: View {
    let language: ProgrammingLanguage
    @ObservedObject var viewModel: ProgrammingLanguagesViewModel

    var body: some View {
        VStack {
            // Toolbar
            HStack {
                Button(action: {
                    viewModel.toolbarSelection = .dictionary
                }) {
                    Text("Dictionary")
                        .fontWeight(viewModel.toolbarSelection == .dictionary ? .bold : .regular)
                }
                .padding()
                .accessibilityLabel("Dictionary option")
                .accessibilityHint("Shows the dictionary for \(language.name)")

                Spacer()

                Button(action: {
                    viewModel.toolbarSelection = .syntax
                }) {
                    Text("Syntax")
                        .fontWeight(viewModel.toolbarSelection == .syntax ? .bold : .regular)
                }
                .padding()
                .accessibilityLabel("Syntax option")
                .accessibilityHint("Shows the syntax for \(language.name)")
            }
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal)

            // Dynamic Content
            if viewModel.toolbarSelection == .dictionary {
                DictionaryView(language: language)
                    .accessibilityLabel("\(language.name) dictionary")
                    .accessibilityHint("A dictionary of \(language.name) terms")
            } else {
                SyntaxView(language: language)
                    .accessibilityLabel("\(language.name) syntax")
                    .accessibilityHint("The syntax details for \(language.name)")
            }

            Spacer()
        }
        .navigationTitle(language.name)
        .padding()
        .accessibilityLabel("\(language.name) details view")
    }
}
