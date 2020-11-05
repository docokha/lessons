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

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
   }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "infoFreind", for: indexPath) as! CollectionViewCellFreind
        
        cell.nameFreind.text = labelName
        cell.photoFreind.image = photoUser
        
        cell.photoFreind.layer.cornerRadius = cell.photoFreind.frame.height/2
        
        return cell
    }
}
