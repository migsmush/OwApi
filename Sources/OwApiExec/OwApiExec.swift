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
            let heroes: [Hero]? = try await api.fetchHeroes()
            print(heroes ?? "no heroes")
        } catch {
            print(error.localizedDescription)
        }
    }
}
