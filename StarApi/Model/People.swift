//
//  People.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-11.
//

import Foundation


public struct People: Decodable {
    
    var name: String
    var birth_year: String
    var films: [String]
    var gender: String
    
}
