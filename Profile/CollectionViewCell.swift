//
//  CollectionViewCell.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/24/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descView: UIView!
    
    func configureCell() {
        self.layer.cornerRadius = 10;
        self.layer.masksToBounds = true;
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        
        mainImageView.frame.size.width = contentView.frame.width
        //mainImageView.frame.size.height = contentView.frame.height
        mainImageView.contentMode = .scaleAspectFit
        mainImageView.layer.cornerRadius = 5;
        mainImageView.layer.masksToBounds = true;
        //mainImageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mainImageView.translatesAutoresizingMaskIntoConstraints = true
        descView.backgroundColor = .darkGray
        descView.alpha = 0.6;
    }
    
}
