//
//  File.swift
//  OwApi
//
//  Created by Miguel Oyler on 7/29/25.
//

import Foundation

public struct ShortPlayerSummary: Decodable, Sendable, Identifiable {
    let id = UUID()
    public let username: String
    public let avatar: String?
    public let namecard: String?
    public let title: String?
    public let endorsement: PlayerEndorsement?
    public let competitive: PlayerCompetitiveStats?
    public let last_updated_at: Date?
    
    public init(username: String, avatar: String? = nil, namecard: String? = nil, title: String? = nil, endorsement: PlayerEndorsement? = nil, competitive: PlayerCompetitiveStats? = nil, last_updated_at: Date? = nil) {
        self.username = username
        self.avatar = avatar
        self.namecard = namecard
        self.title = title
        self.endorsement = endorsement
        self.competitive = competitive
        self.last_updated_at = last_updated_at
    }
}
