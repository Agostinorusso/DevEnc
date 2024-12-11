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
        Text("Syntax content for \(language.name)")
            .font(.title2)
            .padding()
    }
}

