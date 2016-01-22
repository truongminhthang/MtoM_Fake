//
//  CityButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class CityButton: PickerButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDataForPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupDataForPicker() {
        containerPickerView.data = ["Nam Dinh","Thai Binh", "Ha Noi"]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        self.setTitle(containerPickerView.data[row], forState: UIControlState.Normal)
    }
}
