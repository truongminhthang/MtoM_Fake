//
//  ApplyCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class ApplyCell: UITableViewCell {
    var applyView = UIView()
    var webButton = UIButton()
    var callButton = UIButton()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setLayoutOfApplyCell()
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayoutOfApplyCell() {
        self.addSubview(applyView)
        applyView.mt_innerAlign(left: 8, top: 0, right: 8, bottom: 0)
        applyView.roundBorder()
        applyView.backgroundColor = UIColor.contentCellColor()
        
        applyView.addSubview(webButton)
        applyView.addSubview(callButton)
        mt_createVerticalMenu([webButton,callButton], edge: UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16), gap: 8, seperateColor: UIColor.clearColor())
        
        webButton.roundBorder()
        callButton.roundBorder()
        webButton.setTitle("Web", forState: .Normal)
        callButton.setTitle("Call", forState: .Normal)
    }
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
