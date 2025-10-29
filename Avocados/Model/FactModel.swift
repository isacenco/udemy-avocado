//
//  FactModel.swift
//  Avocados
//
//  Created by Ghenadie Isacenco on 29/10/2025.
//

import SwiftUI

struct Fact: Identifiable {
    var id: UUID = UUID()
    var image: String
    var content: String
}
