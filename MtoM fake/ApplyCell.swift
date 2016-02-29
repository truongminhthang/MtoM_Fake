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
    var headerApplyView = UIView()
    var webButton = UIButton()
    var callButton = UIButton()
    var job : Job! {
        didSet {
            callView = CallView(job: job)
        }
    }
    var callView : CallView!

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setLayoutOfHeaderCell()
        setLayoutOfApplyCell()
        contentView.backgroundColor = UIColor.headerColor()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayoutOfApplyCell() {
        self.addSubview(applyView)
        applyView.mt_innerAlign(left: 8, top: 0, right: 8, bottom: 0)
        applyView.roundBorder()
        applyView.backgroundColor = UIColor.whiteColor()
        setupWebButton()
        setupCallButton()
        mt_createVerticalMenu([webButton,callButton], edge: UIEdgeInsets(top: 8, left: 16, bottom: 16, right: 16), gap: 8, seperateColor: UIColor.clearColor())
    }
    
    func setupWebButton(){
        webButton = setupButton()
        applyView.addSubview(webButton)
    }
    
    func setupCallButton(){
        callButton = setupButton()
        applyView.addSubview(callButton)
        callButton.addTarget(self, action: "showCallView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func setupButton() -> UIButton {
        let button = UIButton(type: UIButtonType.System)
        button.roundBorder()
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button.backgroundColor = UIColor.redColor()
        return button
    }
    
    func setLayoutOfHeaderCell() {
        self.addSubview(headerApplyView)
        headerApplyView.mt_innerAlign(left: 8, top: 0, right: 8, bottom: 16)
        headerApplyView.backgroundColor = UIColor.whiteColor()
    }
    
    func showCallView() {
        AppDelegate.shareInstance().window?.addSubview(callView)
        callView.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}