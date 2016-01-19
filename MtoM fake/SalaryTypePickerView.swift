//
//  SalaryTypePickerView.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class SalaryTypePickerView: PickerView ,UIPickerViewDataSource{
    
    var salaryTypePickerView = UIPickerView()
    
    var dataSalaryType = ["$", "VND","Euro"]
    
    override func createPickerView() {
        super.createPickerView()
        salaryTypePickerView.dataSource = self
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSalaryType.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSalaryType[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataSalaryType[row]
        popView.salaryTypeButton.setTitle(data, forState: .Normal)
    }
    
}
