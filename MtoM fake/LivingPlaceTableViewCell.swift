//
//  OneTableViewCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 11/30/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class LivingPlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var tenLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected{
            tenLabel.backgroundColor = UIColor.clickColor()
        }else{
            tenLabel.backgroundColor = UIColor.whiteColor()
        }
        
    }

}
