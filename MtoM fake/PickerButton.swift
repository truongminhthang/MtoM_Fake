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
    var defaultRow = 0
    
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
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return containerPickerView.data.count
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        self.setTitle(containerPickerView.data[row], forState: UIControlState.Normal)
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return containerPickerView.data[row]
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
        containerPickerView.mt_innerAlign(left: 8, top: nil, right: 8, bottom: 0)
        containerPickerView.mt_innerAlign(left: nil, top: (300, self), right: nil, bottom: nil)
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
