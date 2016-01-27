//
//  PickerViewButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit
protocol PickerButtonProtocol {
    var anchorTopView: UIView {get}
}

class PickerButton: UIButton {
    
    var containerPickerView = ContainerPickerView()

    var delegate: PickerButtonProtocol?
    
    init (data: [String]) {
        super.init(frame: CGRectZero)
        containerPickerView.data = data
        setupPickerButton()
        layoutArrowDown()
        containerPickerView.roundBorder()
    }
    
    convenience init() {
        self.init(data: [String]())
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageArrow = UIImageView(image: UIImage(named: "ic_arrow_down"))

    func setupPickerButton() {
        self.setTitle("", forState: UIControlState.Normal)
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
        containerPickerView.mt_innerAlign(left: 4, top: nil, right: 4, bottom: 0)
        containerPickerView.mt_innerAlign(left: nil, top: (170, delegate?.anchorTopView), right: nil, bottom: nil)
        containerPickerView.showPicker()
    }
    

    func hidePickerView() {
        containerPickerView.removeFromSuperview()
    }
}
