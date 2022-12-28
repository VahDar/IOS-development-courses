//
//  GenresModel.swift
//  HomeWork 8(tassk 5...) @IMeanHi
//
//  Created by Vakhtang on 24.12.2022.
//

import Foundation

// MARK: - Welcome
struct GenresModel: Codable {
    let genres: [Genre]
}

// MARK: - Genre
struct Genre: Codable {
    let id: Int
    let name: String
}
