//
//  FootballClubTableViewDataSource.swift
//  PremierleagueScore
//
//  Created by ZoroKh on 2023/03/12.
//

import Foundation
import UIKit

class FootballClubTableViewDataSource<Cell: UITableViewCell, T>: NSObject, UITableViewDataSource {
    private var title: String?
    private var cellIdentifier : String!
    private var items : [T]!
    var configureCell : (Cell, T) -> () = { _,_ in }

    init(title: String? = nil, cellIdentifier : String, items : [T], configureCell : @escaping (Cell, T) -> ()) {
        self.title = title
        self.cellIdentifier = cellIdentifier
        self.items = items
        self.configureCell = configureCell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath) as! Cell
        let item = self.items[indexPath.row]
        self.configureCell(cell, item)
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return title
    }
}
