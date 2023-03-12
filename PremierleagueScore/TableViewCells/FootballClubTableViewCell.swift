//
//  FootballClubTableViewCell.swift
//  PremierleagueScore
//
//  Created by ZoroKh on 2023/03/12.
//

import Foundation
import UIKit

class FootballClubTableViewCell: UITableViewCell {
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var clubNameLabel: UILabel!

    var footballClub : FootballClub? {
        didSet {
            self.rankLabel.text = footballClub?.rank
            self.clubNameLabel.text = footballClub?.name
        }
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
