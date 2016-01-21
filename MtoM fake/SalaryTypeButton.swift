//
//  SalaryTypeButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class SalaryTypeButton: PickerButton {
    
    var salaryTypePickerView = ContainerPickerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDataForPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupDataForPicker() {
        salaryTypePickerView.data = ["$", "VND", "Euro"]
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return salaryTypePickerView.data.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return salaryTypePickerView.data[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = salaryTypePickerView.data[row]
        popView.salaryTypeButton.setTitle(data, forState: UIControlState.Normal)
    }
    
}



