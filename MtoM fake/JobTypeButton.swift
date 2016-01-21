//
//  JobTypeButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobTypeButton: PickerButton {
    
    var jobTypePickerView = ContainerPickerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDataForPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupDataForPicker() {
        jobTypePickerView.data = ["iOS", "Adroid", "Ruby"]
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return jobTypePickerView.data.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return jobTypePickerView.data[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = jobTypePickerView.data[row]
        popView.jobTypeButton.setTitle(data, forState: UIControlState.Normal)
    }
    
}
