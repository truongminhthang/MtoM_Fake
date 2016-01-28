//
//  PlaceMenuButton.swift
//  MtoM fake
//
//  Created by Student on 1/21/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PlaceMenuButton: MenuButton {
    
    weak var theMenu: UIView?
    var cityList : [String] = ["Ha Noi", "Hue", "Da Nang"]
    var provinceList :[String] = [" Cau giay", "Hoan kiem ", "Dong Da"]
    var cityPickerButton : PickerButton
    var provincePickerButton : PickerButton
    
    init() {
        cityPickerButton =  PickerButton(data: cityList)
        provincePickerButton = PickerButton (data: provinceList)
        super.init(frame: CGRectZero)
        popView = PopView(higherButton: cityPickerButton, lowerButton: provincePickerButton, higherLabelTitle: "City", lowerLabelTitle: "Province")
        cityPickerButton.delegate = self
        provincePickerButton.delegate = self
        popView!.menuBT = self
        setupTitleForPickerButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTitleForPickerButton() {
        cityPickerButton.setTitle(cityList.first, forState: UIControlState.Normal)
        provincePickerButton.setTitle(provinceList.first, forState: UIControlState.Normal)
    }
    
}
