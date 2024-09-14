//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Manpreet Brar on 2024-09-05.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
            
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
