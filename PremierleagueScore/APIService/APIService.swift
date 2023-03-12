//
//  APIService.swift
//  PremierleagueScore
//
//  Created by ZoroKh on 2023/03/12.
//

import Foundation

class APIService: NSObject {
    func featchFootballClubsInfo(completion : @escaping (FootballClubs) -> ()) {
        if let url = Bundle.main.url(forResource: "footballclubs", withExtension: "json"),
           let jsonData = try? Data(contentsOf: url),
           let footballClubs = try? JSONDecoder().decode(FootballClubs.self, from: jsonData) {
            completion(footballClubs)
            return
        } else {
            print("Failed to load json data...")
        }
    }
}
