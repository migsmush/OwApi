//
//  File.swift
//  OwApi
//
//  Created by Miguel Oyler on 7/17/25.
//

import Foundation
import OwApi

@main
struct OwApiExec {
    private static let api = OwApi()
    static func main() async {
        do {
            let fetchPlayersByNameRes: PlayerSearchResponse? = try await api.fetchPlayersByName(name: "VinzAsian")
            print(fetchPlayersByNameRes ?? "")
//            if let fetchPlayerRes = fetchPlayersByNameRes, let firstPlayerId = fetchPlayerRes.results.first?.player_id {
//                let fullPlayerData: FullPlayerDataResponse? = try await api.fetchFullPlayerData(playerId: firstPlayerId)
//                print(fullPlayerData ?? "")
//            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
