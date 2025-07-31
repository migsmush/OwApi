//
//  File.swift
//  OwApi
//
//  Created by Miguel Oyler on 7/21/25.
//

import Foundation

public struct PlayerSearchResponse: Decodable, Sendable {
    public let total: Int
    public let results: [PlayerSearchResult]
    
//    struct CodingKeys: String, CodingKey {
//        case total
//        case results
//    }
//    public enum CodingKeys: CodingKey {
//        case total
//        case results
//    }
//    
//    public init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.total = try container.decode(Int.self, forKey: .total)
//        self.results = try container.decode([PlayerSearchResult].self, forKey: .results)
//    }
    
    public init(total: Int, results: [PlayerSearchResult]) {
        self.total = total
        self.results = results
    }
}

public struct PlayerSearchResult: Decodable, Sendable, Identifiable, Encodable, Equatable {
    public let id = UUID()
    public let player_id: String
    public let name: String
    public let avatar: String?
    public let namecard: String?
    public let title: String?
    public let career_url: String
    public let blizzard_id: String
    public let last_updated_at: Date
    
    public init(player_id: String, name: String, avatar: String? = nil, namecard: String? = nil, title: String? = nil, career_url: String, blizzard_id: String, last_updated_at: Date) {
        self.player_id = player_id
        self.name = name
        self.avatar = avatar
        self.namecard = namecard
        self.title = title
        self.career_url = career_url
        self.blizzard_id = blizzard_id
        self.last_updated_at = last_updated_at
    }
}
