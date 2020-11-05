//
//  TableViewControllerSearchGroup.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 05.11.2020.
//

import UIKit

class TableViewControllerSearchGroup: UITableViewController {
    
    var allGroups = ["Оптимист", "Мой Аэрофлот", "Okha65.RU - Охинский портал", "Приложение ВКонтакте", "GeekBrains"]
    
    var allGroupsAvatars = [UIImage(named: "ava_g4.jpg"), UIImage(named: "ava_g1.jpg"), UIImage(named: "ava_g2.jpg"), UIImage(named: "ava_g5.jpg"), UIImage(named: "ava_g3.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 40.0
        tableView.rowHeight = UITableView.automaticDimension
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allGroups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellGroup", for: indexPath) as! TableViewCellSearchGroup
        
        cell.cellGroup.text = allGroups[indexPath.row]
        cell.photoGroup.image = allGroupsAvatars[indexPath.row]
        
        cell.layoutIfNeeded()
        cell.photoGroup.layer.cornerRadius = cell.photoGroup.frame.height/2

        return cell
    }
}
