//
//  ApplyCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class ApplyCell: UITableViewCell {
    @IBOutlet weak var applyView: UIView!

    @IBOutlet weak var webButton: UIButton!
    
    @IBOutlet weak var callButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        webButton.roundBorder()
        callButton.roundBorder()
        applyView.roundBorder()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
