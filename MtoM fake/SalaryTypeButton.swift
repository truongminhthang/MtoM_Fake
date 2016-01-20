//
//  SalaryTypeButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class SalaryTypeButton: PickerButton {
    
    var salaryTypePickerView = PickerView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    var dataSalaryType = ["$", "VND","Euro"]
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSalaryType.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSalaryType[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataSalaryType[row]
        popView!.salaryTypeButton.setTitle(data, forState: .Normal)
    }
    
}



