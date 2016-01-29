//
//  PhoneCell.swift
//  MtoM fake
//
//  Created by Student on 1/28/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PhoneCell: TextCell {

    override func layoutBodyCell() {
        super.layoutBodyCell()
        viewText.mt_InnerAlign(allSpace: 0)
        dashLine.removeFromSuperview()
        contentView.backgroundColor = UIColor.whiteColor()
    }
    
    override func prepareForReuse() {
        textContentLabel.textColor = UIColor.redColor()
    }
}
