//
//  File.swift
//  OwApi
//
//  Created by Miguel Oyler on 7/21/25.
//

import Foundation

public struct PlayerSearchResponse: Decodable {
    public let total: Int
    public let results: [PlayerSearchResult]
    
    struct CodingKeys: String, CodingKey {
        case total
        case results
    }
    
    public init(from decoder: any Decoder) throws {
        let playerSearchResponseContainer = try decoder.container(keyedBy: CodingKeys.self)
        let total = try playerSearchResponseContainer.decode(Int.self, forKey: .total)
    }
}
