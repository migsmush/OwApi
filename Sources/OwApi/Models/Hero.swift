//
//  File.swift
//  OwApi
//
//  Created by Miguel Oyler on 7/17/25.
//

import Foundation

public struct Hero: Decodable, Sendable {
    public let name: String
    public let description: String
    public let portrait: String?
    public let location: String
    public let role: String
    public let age: Int?
    public let birthday: String?
//    public let hitpoints: Hitpoints
//    public let abilities: [Ability]
//    public let story: HeroStory
    
    enum HeroCodingKeys: String, CodingKey {
        case name
        case description
        case portrait
        case location
        case role
        case age
        case birthday
    }
    
    public init(
        name: String,
        description: String,
        portrait: String? = nil,
        location: String,
        age: Int? = nil,
        birthday: String? = nil,
        role: String
//        abilities: [Ability],
//        story: HeroStory
    ) {
        self.name = name
        self.description = description
        self.portrait = portrait
        self.location = location
        self.age = age
        self.birthday = birthday
        self.role = role
//        self.abilities = abilities
//        self.story = story
    }
}
