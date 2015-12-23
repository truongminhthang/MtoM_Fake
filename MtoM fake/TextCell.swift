//
//  TextCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {

    @IBOutlet weak var viewText: UIView!
    
    @IBOutlet weak var textDetailLabel: UILabel!
    
    @IBOutlet weak var textContentLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    
    override func prepareForReuse() {
        textContentLabel.textColor = UIColor.blackColor()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
