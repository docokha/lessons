//
//  CollectionViewControllerFreind.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 03.11.2020.
//

import UIKit

private let reuseIdentifier = "Cell"


class CollectionViewControllerFreind: UICollectionViewController {
    
    
    var labelName: String = ""
    var photoUser: UIImage!
    //let likes = Int.random(in: 1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
   }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "infoFreind", for: indexPath) as! CollectionViewCellFreind
        cell.photoFreind.image = photoUser
       
        //cell.likes = likes
        //cell.countLike.text = "\(likes)"
        
        return cell
    }
}
