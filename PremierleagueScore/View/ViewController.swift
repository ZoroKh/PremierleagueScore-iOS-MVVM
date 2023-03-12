//
//  ViewController.swift
//  PremierleagueScore
//
//  Created by ZoroKh on 2023/03/12.
//

import UIKit

struct Identifier {
    static let footballClubTableViewCell = "FootballClubTableViewCell"
}

class ViewController: UIViewController {
    @IBOutlet weak var footballClubTableView: UITableView!

    private var footballClubModel: FootballClubViewModel!
    private var dataSource: FootballClubTableViewDataSource<FootballClubTableViewCell, FootballClub>!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupUI()
    }

    private func setupData() {
        footballClubModel = FootballClubViewModel()
    }

    private func setupUI() {
        let footballClubs = footballClubModel.footballClubs!
        let title = "Premier League - Season \(footballClubs.season)"

        dataSource = FootballClubTableViewDataSource(title: title, cellIdentifier: Identifier.footballClubTableViewCell, items: footballClubs.data) { (cell, footballClub) in
            cell.rankLabel?.text = footballClub.rank
            cell.clubNameLabel?.text = footballClub.name
        }

        DispatchQueue.main.async { [weak self] in
            self?.footballClubTableView.dataSource = self?.dataSource
            self?.footballClubTableView.reloadData()
        }
    }
}

