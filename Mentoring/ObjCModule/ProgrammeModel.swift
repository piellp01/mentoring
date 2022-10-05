//
//  ProgrammeModel.swift
//  Mentoring
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 05/10/2022.
//

import Foundation

// MARK: - Bundle
// 🤢
@objc
public class Bundle: NSObject, Codable {
    let programmes: [Programme]
}

// MARK: - Programme
struct Programme: Codable {
    let name, category: String
}


