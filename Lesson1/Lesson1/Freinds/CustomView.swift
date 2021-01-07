//
//  CustomView.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 06.01.2021.
//

import UIKit

class CustomView: UIView {
    
    @IBInspectable var shadowOpacity: Float = 1.0
    @IBInspectable var shadowRadius: CGFloat = 4
    @IBInspectable var color: UIColor = .gray

    var imageView: UIImageView? = nil
    
    func setImage(_ image: UIImage) {
        imageView = UIImageView(frame: self.bounds)
        imageView?.image = image
        imageView?.layer.cornerRadius = self.frame.size.height / 2
        imageView?.layer.masksToBounds = true
        self.backgroundColor = .clear
        self.addSubview(imageView!)
    }
    
    override func draw(_ rect: CGRect) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
    }

}
