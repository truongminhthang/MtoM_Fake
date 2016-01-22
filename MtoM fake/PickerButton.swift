//
//  PickerViewButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PickerButton: UIButton {
    
    var containerPickerView = ContainerPickerView()
    var popView : PopView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPickerButton()
        layoutArrowDown()
        containerPickerView.roundBorder()
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageArrow = UIImageView(image: UIImage(named: "ic_arrow_down"))

    func setupPickerButton() {
        self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.layer.borderColor = UIColor.borderColor().CGColor
        self.layer.borderWidth = 1
        self.roundBorder()
    }

    func layoutArrowDown() {
        self.addSubview(imageArrow)
        imageArrow.mt_InnerAlign(PinPosition.MidRight, space: 5, size: CGSize(width: 15, height: 15))
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        selected = !selected
        if selected {
            showPickerView()
        }else {
            hidePickerView()
        }
    }
    
    func showPickerView() {        
        AppDelegate.shareInstance().window?.addSubview(containerPickerView)
        containerPickerView.mt_innerAlign(left: 8, top: nil, right: 8, bottom: -5)
        containerPickerView.mt_innerAlign(left: nil, top: (370, popView), right: nil, bottom: nil)
    }

    func hidePickerView() {
        containerPickerView.removeFromSuperview()
    }
    
 
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
