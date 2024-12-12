//
//  ProgrammingLanguageDetailView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

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

                Spacer()

                Button(action: {
                    viewModel.toolbarSelection = .syntax
                }) {
                    Text("Syntax")
                        .fontWeight(viewModel.toolbarSelection == .syntax ? .bold : .regular)
                }
                .padding()
            }
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal)

            // Dynamic Content
            if viewModel.toolbarSelection == .dictionary {
                DictionaryView(language: language)
            } else {
                SyntaxView(language: language)
            }

            Spacer()
        }
        .navigationTitle(language.name)
        .padding()
    }
}

