//
//  SexTableViewCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/2/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class SexTableViewCell: UITableViewCell {

    @IBOutlet weak var SexLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        if selected{
            SexLabel.backgroundColor = UIColor.clickColor()
        }else{
            SexLabel.backgroundColor = UIColor.whiteColor()
        }

    }

}
