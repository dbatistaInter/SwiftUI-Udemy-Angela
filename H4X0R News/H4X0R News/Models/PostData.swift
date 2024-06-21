//
//  PostData.swift
//  H4X0R News
//
//  Created by David Eduardo Batista on 20/06/24.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
