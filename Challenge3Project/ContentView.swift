//
//  ContentView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

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

                // List of Programming Languages
                List(viewModel.programmingLanguages) { language in
                    NavigationLink(
                        destination: ProgrammingLanguageDetailView(language: language, viewModel: viewModel)
                    ) {
                        HStack {
                            // Icon on the left
                            Image(language.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 80) // Adjust size as needed
                                .padding(.trailing, 10)
                            
                            // Language Name
                            Text(language.name)
                                .font(.headline)
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
