//
//  TableViewControllerGroup.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 02.11.2020.
//

import UIKit

class TableViewControllerGroup: UITableViewController {
    
    var myGroups = [String]()
    var myGroupsPhoto = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 40.0
        tableView.rowHeight = UITableView.automaticDimension
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGroups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! TableViewCellGroup
        
        let nameGroup = myGroups[indexPath.row]
        cell.labelGroup.text = nameGroup
        
        let photoGroup = myGroupsPhoto[indexPath.row]
        cell.photoGroup.image = photoGroup
        
        cell.layoutIfNeeded()
        cell.photoGroup.layer.cornerRadius = cell.photoGroup.frame.height/2

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
                if segue.identifier == "addGroup" {
                    let myFreindsVC = segue.source as! TableViewControllerSearchGroup
                    if let indexPath = myFreindsVC.tableView.indexPathForSelectedRow {
                        let group = myFreindsVC.allGroups[indexPath.row]
                        let groupPhoto = myFreindsVC.allGroupsAvatars[indexPath.row]
                        
                        if !myGroups.contains(group) && !myGroupsPhoto.contains(groupPhoto!) {
                            myGroups.append(group)
                            myGroupsPhoto.append(groupPhoto!)
                            tableView.reloadData()
                        }
                    }
                }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            myGroupsPhoto.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addGroup = segue.destination as? TableViewControllerSearchGroup
        var allGroups = addGroup!.allGroups
        var allGroupsPhotos = addGroup!.allGroupsAvatars
        
        guard myGroups.count > 0 else {
            return
        }
        
        guard myGroupsPhoto.count > 0 else {
            return
        }
        
        var i = 1
        var i2 = 1
        
        while i <= myGroups.count {
            while i2 <= allGroups.count {
                if myGroups[i-1] == allGroups[i2-1] {
                    allGroups.remove(at: i2-1)
                    allGroupsPhotos.remove(at: i2-1)
                }
                i2 = i2 + 1
            }
            i2 = 1
            i = i + 1
        }
        
        addGroup?.allGroups = allGroups
        addGroup?.allGroupsAvatars = allGroupsPhotos
    }

}
