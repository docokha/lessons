//
//  TableViewControllerFreinds.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 02.11.2020.
//

import UIKit

class TableViewControllerFreinds: UITableViewController {
    
    let baseUsers = Freind.freinds
    
    @IBOutlet weak var nameOneFreind: UILabel!    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.estimatedRowHeight = 40.0
        //tableView.rowHeight = UITableView.automaticDimension
    }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return baseUsers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FreindsCell", for: indexPath) as! TableViewCellFreinds
        
        let name = baseUsers[indexPath.row].name
        let photo = baseUsers[indexPath.row].photo
        
        cell.labelFreind.text = name
        
        cell.photoFreind.setImage(UIImage(named: "\(photo)")!)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as? CollectionViewControllerFreind
        let indexPath = self.tableView.indexPathForSelectedRow
        let nameUser = baseUsers[indexPath!.row].name
        
        vc1?.photoUser = UIImage(named: "\(baseUsers[indexPath!.row].photo)")
    }
}
