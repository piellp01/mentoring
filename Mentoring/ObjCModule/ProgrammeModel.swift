//
//  ProgrammeModel.swift
//  Mentoring
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 05/10/2022.
//

import Foundation

// MARK: - Bundle
struct Bundle: Codable {
    let programmes: [Programme]
}

// MARK: - Programme
struct Programme: Codable {
    let name, category: String
}

