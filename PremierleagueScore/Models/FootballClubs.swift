//
//  Club.swift
//  PremierleagueScore
//
//  Created by ZoroKh on 2023/03/12.
//

import Foundation

struct FootballClubs: Decodable {
    let region: String
    let season: String
    let data: [FootballClub]
}

struct FootballClub: Decodable {
    let name: String
    let rank: String
}
