//
//  PickerViewButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PickerButton: UIButton {
    
    var otherButtons = [PickerButton]()
    
    let imageArrow = UIImageView(image: UIImage(named: "ic_arrow_down"))

    var informationVC : InformationVC?
    var popView : PopView?
    var pickerView : PickerView?
    
    convenience init(informationVC: InformationVC) {
        self.init()
        self.informationVC = informationVC
    }
    
    convenience init(popView: PopView) {
        self.init()
        self.popView = popView
    }
    
    convenience init(pickerView: PickerView) {
        self.init()
        self.pickerView = pickerView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPickerButton()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if selected {
            popView!.showPickerView(self)
        }else {
            popView!.hidePickerView()
        }
        layoutArrowDown()
    }
    
    func setupPickerButton() {
        self.roundBorder()
        self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.layer.borderColor = UIColor.borderColor().CGColor
        self.layer.borderWidth = 1
    }
    
    func layoutArrowDown() {
        self.addSubview(imageArrow)
        imageArrow.mt_InnerAlign(PinPosition.MidRight, space: 5, size: CGSize(width: 15, height: 15))
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        resetOtherButton()
        selected = !selected
    }
    func resetOtherButton() {
        for item in otherButtons {
            if item.selected == true {
                if item != self {
                    item.selected = false
                }
                
            }
        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
