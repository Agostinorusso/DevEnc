//
//  AccessibilitySection.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 18/04/25.
//

import SwiftUI

struct SectionView: View {
    let title: String
    let content: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
                .accessibilityAddTraits(.isHeader)

            Text(content)
                .font(.body)
                .multilineTextAlignment(.leading)
                .accessibilityLabel(content)
        }
    }
}
