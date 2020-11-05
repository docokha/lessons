//
//  TableViewCellFreinds.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 02.11.2020.
//

import UIKit

class TableViewCellFreinds: UITableViewCell {
    
    @IBOutlet weak var labelFreind: UILabel!
    @IBOutlet weak var photoFreind: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoFreind.layer.cornerRadius = 5
        photoFreind.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
