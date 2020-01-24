//
//  recipeItem.swift
//  recipeBookV2
//
//  Created by jayjay venegas on 1/23/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import Foundation

class recipeItem: Codable {
    init(recipe: String, ingriedients: String, instructions: String) {
        self.recipe = recipe
        self.ingriedients = ingriedients
        self.instructions = instructions
    }
    
    var recipe: String
    var ingriedients: String
    var instructions: String
}
