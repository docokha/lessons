//
//  TableViewCellGroup.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 02.11.2020.
//

import UIKit

class TableViewCellGroup: UITableViewCell {
  
    @IBOutlet weak var labelGroup: UILabel!
    @IBOutlet weak var photoGroup: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoGroup.layer.cornerRadius = 5
        photoGroup.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
