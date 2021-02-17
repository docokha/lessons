//
//  TableViewControllerFreinds.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 02.11.2020.
//

import UIKit

class TableViewControllerFreinds: UITableViewController {
    
    var baseFreinds: FreindsListClass.FreindsStruct? = nil
    private let networkManager: NetworkManager = NetworkManager()
    var cacheImages = NSCache<AnyObject, AnyObject>()
    
    @IBOutlet weak var nameOneFreind: UILabel!    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkManager.getResult(method: .getFreindsList) { (dataArray) in
            self.baseFreinds = dataArray as? FreindsListClass.FreindsStruct
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        
    }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return baseFreinds?.response.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FreindsCell", for: indexPath) as! TableViewCellFreinds
        
        cell.labelFreind.text = "\(String((baseFreinds?.response.items[indexPath.row].firstName)!)) \(String((baseFreinds?.response.items[indexPath.row].lastName)!))"
        
        if let img = cacheImages.object(forKey: baseFreinds?.response.items[indexPath.row].photo100 as AnyObject) {
            cell.photoFreind.setImage(img as! UIImage)
        } else {
            DispatchQueue.global().async {
                let data = NSData(contentsOf: URL(string: (self.baseFreinds?.response.items[indexPath.row].photo100)!)!)
                DispatchQueue.main.async {
                    cell.photoFreind.setImage(UIImage(data: data! as Data)!)
                    self.cacheImages.setObject(UIImage(data: data! as Data)!, forKey: self.baseFreinds?.response.items[indexPath.row].photo100 as AnyObject)
                }
            }
        }
        
        //cell.photoFreind.setImage(UIImage(named: "\(photo)")!)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as? CollectionViewControllerFreind
        let indexPath = self.tableView.indexPathForSelectedRow
        let nameUser = "\(String((baseFreinds?.response.items[indexPath!.row].firstName)!)) \(String((baseFreinds?.response.items[indexPath!.row].lastName)!))"
        
        //vc1?.photoUser = UIImage(named: "\(baseUsers[indexPath!.row].photo)")
    }
}
