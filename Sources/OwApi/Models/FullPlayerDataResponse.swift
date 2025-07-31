//
//  File.swift
//  OwApi
//
//  Created by Miguel Oyler on 7/22/25.
//

import Foundation

public struct FullPlayerDataResponse: Decodable, Sendable, Encodable {
    public let summary: PlayerSummary
    public let stats: PlayerStats
    
    public init(summary: PlayerSummary, stats: PlayerStats) {
        self.summary = summary
        self.stats = stats
    }
}

public struct PlayerSummary: Decodable, Sendable, Encodable {
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

public struct PlayerEndorsement: Decodable, Sendable, Encodable {
    public let level: Int
    public let frame: String
    
    public init(level: Int, frame: String) {
        self.level = level
        self.frame = frame
    }
}

public struct PlayerCompetitiveStats: Decodable, Sendable, Encodable {
    public let pc: PlayerCompetitiveStatsSummary?
    public let console: PlayerCompetitiveStatsSummary?
    
    public init(pc: PlayerCompetitiveStatsSummary? = nil, console: PlayerCompetitiveStatsSummary? = nil) {
        self.pc = pc
        self.console = console
    }
}

public struct PlayerCompetitiveStatsSummary: Decodable, Sendable, Encodable {
    public let season: Int
    public let tank: CompetitiveRoleStats?
    public let damage: CompetitiveRoleStats?
    public let support: CompetitiveRoleStats?
    public let open: CompetitiveRoleStats?
    
    public init(season: Int, tank: CompetitiveRoleStats? = nil, damage: CompetitiveRoleStats? = nil, support: CompetitiveRoleStats? = nil, open: CompetitiveRoleStats? = nil) {
        self.season = season
        self.tank = tank
        self.damage = damage
        self.support = support
        self.open = open
    }
}

public struct CompetitiveRoleStats: Decodable, Sendable, Encodable {
    public let division: String
    public let tier: Int
    public let role_icon: String
    public let rank_icon: String
    public let tier_icon: String
    
    public init(division: String, tier: Int, role_icon: String, rank_icon: String, tier_icon: String) {
        self.division = division
        self.tier = tier
        self.role_icon = role_icon
        self.rank_icon = rank_icon
        self.tier_icon = tier_icon
    }
}

public struct PlayerStats: Decodable, Sendable, Encodable {
    public let pc: PlayerStatsSummary?
    public let console: PlayerStatsSummary?
    
    public init(pc: PlayerStatsSummary? = nil, console: PlayerStatsSummary? = nil) {
        self.pc = pc
        self.console = console
    }
}

public struct PlayerStatsSummary: Decodable, Sendable, Encodable {
    public let quickplay: GameModeStatsSummary?
    public let competitive: GameModeStatsSummary?
    
    public init(quickplay: GameModeStatsSummary? = nil, competitive: GameModeStatsSummary? = nil) {
        self.quickplay = quickplay
        self.competitive = competitive
    }
}

public struct GameModeStatsSummary: Decodable, Sendable, Encodable {
    public let heroes_comparisons: HeroComparisonStats?
    public let career_stats: CareerStats?
    
    public init(heroes_comparisons: HeroComparisonStats? = nil, career_stats: CareerStats? = nil) {
        self.heroes_comparisons = heroes_comparisons
        self.career_stats = career_stats
    }
}

public struct HeroComparisonStats: Decodable, Sendable, Encodable {
    public let time_played: HeroStatCategory?
    public let games_won: HeroStatCategory?
    public let win_percentage: HeroStatCategory?
    public let weapon_accuracy_best_in_game: HeroStatCategory?
    public let eliminations_per_life: HeroStatCategory?
    public let kill_streak_best: HeroStatCategory?
    public let multikill_best: HeroStatCategory?
    public let eliminations_avg_per_10_min: HeroStatCategory?
    public let deaths_avg_per_10_min: HeroStatCategory?
    public let final_blows_avg_per_10_min: HeroStatCategory?
    public let solo_kills_avg_per_10_min: HeroStatCategory?
    public let objective_kills_avg_per_10_min: HeroStatCategory?
    public let objective_time_avg_per_10_min: HeroStatCategory?
    public let hero_damage_done_avg_per_10_min: HeroStatCategory?
    public let healing_done_avg_per_10_min: HeroStatCategory?

    public init(
        time_played: HeroStatCategory? = nil,
        games_won: HeroStatCategory? = nil,
        win_percentage: HeroStatCategory? = nil,
        weapon_accuracy_best_in_game: HeroStatCategory? = nil,
        eliminations_per_life: HeroStatCategory? = nil,
        kill_streak_best: HeroStatCategory? = nil,
        multikill_best: HeroStatCategory? = nil,
        eliminations_avg_per_10_min: HeroStatCategory? = nil,
        deaths_avg_per_10_min: HeroStatCategory? = nil,
        final_blows_avg_per_10_min: HeroStatCategory? = nil,
        solo_kills_avg_per_10_min: HeroStatCategory? = nil,
        objective_kills_avg_per_10_min: HeroStatCategory? = nil,
        objective_time_avg_per_10_min: HeroStatCategory? = nil,
        hero_damage_done_avg_per_10_min: HeroStatCategory? = nil,
        healing_done_avg_per_10_min: HeroStatCategory? = nil
    ) {
        self.time_played = time_played
        self.games_won = games_won
        self.win_percentage = win_percentage
        self.weapon_accuracy_best_in_game = weapon_accuracy_best_in_game
        self.eliminations_per_life = eliminations_per_life
        self.kill_streak_best = kill_streak_best
        self.multikill_best = multikill_best
        self.eliminations_avg_per_10_min = eliminations_avg_per_10_min
        self.deaths_avg_per_10_min = deaths_avg_per_10_min
        self.final_blows_avg_per_10_min = final_blows_avg_per_10_min
        self.solo_kills_avg_per_10_min = solo_kills_avg_per_10_min
        self.objective_kills_avg_per_10_min = objective_kills_avg_per_10_min
        self.objective_time_avg_per_10_min = objective_time_avg_per_10_min
        self.hero_damage_done_avg_per_10_min = hero_damage_done_avg_per_10_min
        self.healing_done_avg_per_10_min = healing_done_avg_per_10_min
    }
}

public struct HeroStatCategory: Decodable, Sendable, Encodable {
    public let label: String
    public let values: [HeroStatValue]

    public init(label: String, values: [HeroStatValue]) {
        self.label = label
        self.values = values
    }
}

public struct HeroStatValue: Decodable, Sendable, Encodable {
    public let hero: String
    public let value: Double

    public init(hero: String, value: Double) {
        self.hero = hero
        self.value = value
    }
}

public struct CareerStats: Decodable, Sendable, Encodable {
    public let allHeroes: [CareerStatGroup]?
    public let heroes: [String: [CareerStatGroup]]

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicKey.self)
        
        var allHeroesTemp: [CareerStatGroup]? = nil
        var heroesTemp: [String: [CareerStatGroup]] = [:]
        
        for key in container.allKeys {
            let statGroups = try container.decodeIfPresent([CareerStatGroup].self, forKey: key)
            if key.stringValue == "all-heroes" {
                allHeroesTemp = statGroups
            } else if let statGroups = statGroups {
                heroesTemp[key.stringValue] = statGroups
            }
        }
        
        self.allHeroes = allHeroesTemp
        self.heroes = heroesTemp
    }
}

public struct CareerStatGroup: Decodable, Sendable, Encodable {
    public let category: String
    public let label: String
    public let stats: [StatEntry]

    public init(category: String, label: String, stats: [StatEntry]) {
        self.category = category
        self.label = label
        self.stats = stats
    }
}

public struct StatEntry: Decodable, Sendable, Encodable {
    public let key: String
    public let label: String
    public let value: Double

    public init(key: String, label: String, value: Double) {
        self.key = key
        self.label = label
        self.value = value
    }
}

fileprivate struct DynamicKey: CodingKey {
    var stringValue: String
    init?(stringValue: String) { self.stringValue = stringValue }

    var intValue: Int? { return nil }
    init?(intValue: Int) { return nil }
}
