//
//  CardView.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//

import UIKit

@IBDesignable
open class CardView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var yearsLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet var contentView: UIView!
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib(frame: frame)
    }
    
    func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "StandardCardView", bundle: bundle)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        //contentView.layer.cornerRadius = 10
        autoresizingMask = [
            UIView.AutoresizingMask.flexibleWidth,
            UIView.AutoresizingMask.flexibleHeight
        ]
        addSubview(contentView)
    }

    func loadViewFromNib(frame: CGRect) {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "StandardCardView", bundle: bundle)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = frame
        //contentView.layer.cornerRadius = 10
        addSubview(contentView)
    }
    
    func createWorkExCardView(role: String, company: String, years: String, desc: String, image: String) {
        self.roleLabel.text = role
        self.companyLabel.text = company
        self.yearsLabel.text = years
        self.yearsLabel.numberOfLines = 3
        self.descLabel.text = desc
        self.imageView.image = UIImage(named: image)
    }
}
