//
//  Response.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-11.
//

import Foundation

struct Response: Decodable {
    let count: Int
    let results: [People]
}
