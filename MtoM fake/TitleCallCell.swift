//
//  TitleCallCell.swift
//  MtoM fake
//
//  Created by Student on 1/25/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class TitleCallCell: TitleCell {
    var clouseButton = UIButton()
    var callView : CallView?
    
    override func layoutBodyCell() {
        callView = CallView(frame: frame)
        layoutBodyCel()
        headerOfCell.removeFromSuperview()
        contentView.backgroundColor = UIColor.redColor()
    }

    func layoutBodyCel(){
        self.backgroundColor = UIColor.redColor()
        self.addSubview(clouseButton)
        clouseButton.mt_InnerAlign(PinPosition.MidRight, space: 8, size: CGSize(width: 30, height: 30))
        clouseButton.layer.cornerRadius = 14
        clouseButton.setImage(UIImage(named: "ic_close"), forState: UIControlState.Normal)
        clouseButton.backgroundColor = UIColor.whiteColor()
        clouseButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        clouseButton.addTarget(self, action: "hideCallViewCell", forControlEvents: UIControlEvents.TouchUpInside)
    }
    func hideCallViewCell() {
        callView!.hideCallView()
    }
}
