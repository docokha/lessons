//
//  TableViewControllerFreinds.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 02.11.2020.
//

import UIKit

class TableViewControllerFreinds: UITableViewController {
    
    @IBOutlet weak var nameOneFreind: UILabel!
    
    let data = ["Егор Редченко", "Игорь Стрелов", "Елизавета Иванченко", "Сергей Зубарев", "Иван Петров", "Георгий Руденко", "Антон Иванов", "Денис Сидоров"]
    
    let media = [UIImage(named: "ava1.png"), UIImage(named: "ava2.png"), UIImage(named: "ava3.png"), UIImage(named: "ava4.png"), UIImage(named: "ava5.png"), UIImage(named: "ava6.png"), UIImage(named: "ava7.png"), UIImage(named: "ava8.png")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 40.0
        tableView.rowHeight = UITableView.automaticDimension
    }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FreindsCell", for: indexPath) as! TableViewCellFreinds
        
        let name = data[indexPath.row]
        let photo = media[indexPath.row]
        
        cell.labelFreind.text = name
        cell.photoFreind.image = photo
        
        cell.layoutIfNeeded()
        cell.photoFreind.layer.cornerRadius = cell.photoFreind.frame.height/2

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as? CollectionViewControllerFreind
        let indexPath = self.tableView.indexPathForSelectedRow
        let nameUser = data[indexPath!.row]
        
        vc1?.labelName = nameUser
        vc1?.photoUser = media[indexPath!.row]
    }
}
