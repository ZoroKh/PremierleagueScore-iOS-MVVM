//
//  FootballClubViewModel.swift
//  PremierleagueScore
//
//  Created by ZoroKh on 2023/03/12.
//

import Foundation

class FootballClubViewModel : NSObject {
    private var apiService : APIService!
    private(set) var footballClubs : FootballClubs!

    override init() {
        super.init()
        apiService = APIService()
        fetchFootballClubData()
    }

    func fetchFootballClubData() {
        apiService.featchFootballClubsInfo { fooballClubData in
            self.footballClubs = fooballClubData
        }
    }
}
