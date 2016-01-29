//
//  TextCallCell.swift
//  MtoM fake
//
//  Created by Student on 1/27/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class TextCallCell: TextCell {
    
    override func layoutBodyCell() {
        super.layoutBodyCell()
        viewText.mt_InnerAlign(allSpace: 0)
        contentView.backgroundColor = UIColor.whiteColor()
    }
    
}
