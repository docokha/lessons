//
//  CollectionViewCellFreind.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 03.11.2020.
//

import UIKit

class CollectionViewCellFreind: UICollectionViewCell {
    
    //@IBOutlet var nameFreind: UILabel!
    @IBOutlet weak var photoFreind: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var countLike: UILabel!
    
    var tap: Bool = false
    var likes: Int = 0
    
    @IBAction func tapButton(_ sender: Any) {
        if tap == false {
            likeButton.setImage(UIImage(named: "like_on.png"), for: .normal)
            likes = likes + 1
            countLike.text = "\(likes)"
            tap = true
        } else if tap == true {
            likeButton.setImage(UIImage(named: "like_off.png"), for: .normal)
            tap = false
            likes = likes - 1
            countLike.text = "\(likes)"
        } else {
            print("error")
        }
    }
}
