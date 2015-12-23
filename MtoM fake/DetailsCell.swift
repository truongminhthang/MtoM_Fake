//
//  DetailsCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {
    @IBOutlet weak var detailView: UIView!

    @IBOutlet weak var detailButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        detailButton.roundBorder()
        detailButton.layer.borderColor = UIColor.borderColor().CGColor
        detailButton.layer.borderWidth = 1
        detailButton.clipsToBounds = true
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
