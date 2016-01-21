//
//  SalaryButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class SalaryButton: PickerButton {
    
    var salaryPickerView = ContainerPickerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDataForPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupDataForPicker() {
        salaryPickerView.data = ["500$ -> 1000$", "10trVND -> 20trVND", "5000 Euro"]
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return salaryPickerView.data.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return salaryPickerView.data[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = salaryPickerView.data[row]
        popView.salaryButton.setTitle(data, forState: UIControlState.Normal)
    }

    
}
