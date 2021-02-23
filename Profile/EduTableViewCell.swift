//
//  EduTableViewCell.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/22/21.
//

import UIKit

@IBDesignable
class EduTableViewCell: UITableViewCell {


    @IBOutlet weak var uniImageView: UIImageView!
    @IBOutlet weak var uniLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var yearsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
