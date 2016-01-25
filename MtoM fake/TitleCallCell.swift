//
//  TitleCallCell.swift
//  MtoM fake
//
//  Created by Student on 1/25/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class TitleCallCell: UITableViewCell {
    var titleLabel = UILabel()
    var background = UIView()
    var clouseButton = UIButton()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layoutBodyCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func layoutBodyCell(){
        self.addSubview(background)
        background.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        background.backgroundColor = UIColor.redColor()
    }
    func setupBodyCell() {
        background.addSubview(titleLabel)
        titleLabel.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        
        titleLabel.addSubview(clouseButton)
        clouseButton.mt_InnerAlign(PinPosition.MidRight, space: 0, size: CGSize(width: 15, height: 15))
        clouseButton.setTitle("X", forState: UIControlState.Normal)
        clouseButton.roundBorder()
        clouseButton.backgroundColor = UIColor.greenColor()
    }
    
}
