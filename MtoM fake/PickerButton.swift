//
//  PickerViewButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PickerButton: UIButton {
    
    let pickerView = ContainerPickerView()
    var data = [String]()
    var defaultRow = 0
    var popView : PopView!
    
    convenience init(popView: PopView) {
        self.init()
        self.popView = popView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPickerButton()
        layoutArrowDown()
        pickerView.createPickerView()
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
    }
    
    func showPicker() {
        pickerView.hidden = false
    }
    
    func hidePicker() {
        pickerView.hidden = true
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
