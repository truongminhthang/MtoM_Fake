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
        self.callView = CallView(frame: frame)
        layoutBodyCel()
        headerOfCell.removeFromSuperview()
    }

    func layoutBodyCel(){
        self.backgroundColor = UIColor.redColor()
        self.addSubview(clouseButton)
        clouseButton.mt_InnerAlign(PinPosition.MidRight, space: 8, size: CGSize(width: 20, height: 20))
        clouseButton.layer.cornerRadius = 9
        clouseButton.setImage(UIImage(named: "ic_close"), forState: UIControlState.Normal)
        clouseButton.backgroundColor = UIColor.whiteColor()
        clouseButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        clouseButton.addTarget(self, action: "hideCallViewCell", forControlEvents: UIControlEvents.TouchUpInside)
    }
    func hideCallViewCell() {
        callView!.removeFromSuperview()
    }
    
}
