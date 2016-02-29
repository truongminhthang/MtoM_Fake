//
//  PopViewLayout.swift
//  MtoM fake
//
//  Created by Student on 1/29/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

extension PopView {
    
    func createPopFilter(){
        createCoverButton()
        createPopBody()
        createPopBodyComponent()
    }
    
    func createCoverButton(){
        self.addSubview(coverButton)
        coverButton.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        coverButton.backgroundColor = UIColor.coverButtonColor().colorWithAlphaComponent(0.5)
        coverButton.addTarget(self, action: "hidePopView:", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func createPopBody(){
        self.addSubview(popBody)
        popBody.mt_innerAlign(left: 4, top: 4, right: 4, bottom: nil)
        popBody.mt_setHeight(150)
        popBody.backgroundColor = UIColor.whiteColor()
        popBody.mt_splitHorizontallyByViews([line1,line2,line3], edge: UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8), gap: 8)
        popBody.roundBorder()
    }
    
    func createPopBodyComponent() {
        createClickButton()
        createPopBodyLabel()
        createPopBodyButton()
    }
    
    func createPopBodyLabel ()
    {
        createHigherLabel()
        createLowerLabel ()
    }
    
    private func createHigherLabel(){
        line1.addSubview(higherLabel)
        higherLabel.mt_innerAlign(left: 8, top: 0, right: nil, bottom: 0)
        higherLabel.mt_setWidth(80)
        higherLabel.text = higherLabelTitle
    }
    
    private func createLowerLabel(){
        line2.addSubview(lowerLabel)
        lowerLabel.mt_innerAlign(left: 8, top: 0, right: nil, bottom: 0)
        lowerLabel.mt_setWidth(80)
        lowerLabel.text = lowerLabelTitle
    }
    
    func createPopBodyButton() {
        createHightButton()
        createLowButton()
        
    }
    
    private func createHightButton() {
        line1.addSubview(higherButton)
        higherButton.mt_innerAlign(left: nil, top: 4, right: 8, bottom: 4)
        higherButton.mt_innerAlign(left: (16, higherLabel), top: nil, right: nil, bottom: nil)
        higherButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    }
    
    func createLowButton() {
        line2.addSubview(lowerButton)
        lowerButton.mt_innerAlign(left: nil, top: 4, right: 8, bottom: 4)
        lowerButton.mt_innerAlign(left: (16, lowerLabel), top: nil, right: nil, bottom: nil)
        lowerButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    }
    
    func createClickButton(){
        clickButton = createButton()
        line3.addSubview(clickButton)
        clickButton.mt_innerAlign(left: 60, top: 0, right: 60, bottom: 0)
        clickButton.setTitle("Click", forState: .Normal)
        clickButton.backgroundColor = UIColor.redColor()
        clickButton.addTarget(self, action: "showTableView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func showTableView() {
        AppDelegate.shareInstance().window?.addSubview(tbv)
        tbv.mt_innerAlign(left: 0, top: nil, right: 0, bottom: 0)
        tbv.mt_innerAlign(left: nil, top: (0, menuBT), right: nil, bottom: nil)
    }
    
    private func createLabel() -> UILabel{
        let label = UILabel()
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.blackColor()
        return label
    }
    
    private func createButton() -> UIButton {
        let button = UIButton(type: UIButtonType.System)
        button.roundBorder()
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        button.layer.borderColor = UIColor.borderColor().CGColor
        button.layer.borderWidth = 1
        return button
    }
    
}