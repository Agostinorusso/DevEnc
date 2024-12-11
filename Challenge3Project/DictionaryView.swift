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
        Text("Dictionary content for \(language.name)")
            .font(.title2)
            .padding()
    }
}

