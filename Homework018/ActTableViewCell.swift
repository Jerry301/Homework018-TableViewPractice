//
//  ActTableViewCell.swift
//  Homework018
//
//  Created by Chun-Yi Lin on 2021/12/16.
//

import UIKit

class ActTableViewCell: UITableViewCell {

    @IBOutlet weak var customActImageView: UIImageView!
    @IBOutlet weak var customNameLabel: UILabel!
    @IBOutlet weak var customIntroLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
