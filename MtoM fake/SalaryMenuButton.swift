//
//  SalaryMenuButton.swift
//  MtoM fake
//
//  Created by Student on 1/21/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class SalaryMenuButton: MenuButton {

    var salaryTypeData : [String] = ["luong theo tuan", "Luong theo thang", "Luong tra truoc"]
    var salaryRangeData :[String] = [" < 1000 USD", "1000 - 2000 USD", "> 2000 USD"]
    var salaryTypeButton : PickerButton
    var salaryRangeButton : PickerButton
    
    init() {
        salaryTypeButton =  PickerButton(data: salaryTypeData)
        salaryRangeButton = PickerButton (data: salaryRangeData)
        super.init(frame: CGRectZero)
        popView = PopView(higherButton: salaryTypeButton, lowerButton: salaryRangeButton, higherLabelTitle: "Salary", lowerLabelTitle: "Range")
        salaryTypeButton.delegate = self
        salaryRangeButton.delegate = self
        popView!.menuBT = self
        setupTitleForButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupTitleForButton() {
        salaryTypeButton.setTitle(salaryTypeData.first, forState: UIControlState.Normal)
        salaryRangeButton.setTitle(salaryRangeData.first, forState: UIControlState.Normal)
    }
}
