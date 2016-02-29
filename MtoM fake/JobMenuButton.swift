//
//  JobMenuButton.swift
//  MtoM fake
//
//  Created by Student on 1/21/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobMenuButton: MenuButton {

    weak var theMenu: UIView?
    var jobData : [String] = ["CNTT", "Ky su dien", "DTVT"]
    var subJobData :[String] = ["Designer", "Coder", "Tester"]
    var jobPickerButton : PickerButton
    var subPickerButton : PickerButton
    
    init() {
        jobPickerButton =  PickerButton(data: jobData)
        subPickerButton = PickerButton (data: subJobData)
        super.init(frame: CGRectZero)
        popView = PopView(higherButton: jobPickerButton, lowerButton: subPickerButton, higherLabelTitle: "Job", lowerLabelTitle: "")
        
        jobPickerButton.delegate = self
        subPickerButton.delegate = self
        popView!.menuBT = self
        setupTitleForButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupTitleForButton() {
        jobPickerButton.setTitle(jobData.first, forState: UIControlState.Normal)
        subPickerButton.setTitle(subJobData.first, forState: UIControlState.Normal)
    }
}
