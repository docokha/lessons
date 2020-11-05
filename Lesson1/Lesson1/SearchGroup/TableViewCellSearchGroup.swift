//
//  TableViewCellSearchGroup.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 05.11.2020.
//

import UIKit

class TableViewCellSearchGroup: UITableViewCell {

    @IBOutlet weak var cellGroup: UILabel!
    @IBOutlet weak var photoGroup: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
