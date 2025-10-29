//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Ghenadie Isacenco on 29/10/2025.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 320, height: 60)) {
    RecipeRatingView(recipe: recipesData[0])
}
