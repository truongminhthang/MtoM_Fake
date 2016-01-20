//
//  JobTypeButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobTypeButton: PickerButton {
    
    var jobTypePickerView = PickerView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    var dataJobType = ["iOS", "Android","App.net"]
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataJobType.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataJobType[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataJobType[row]
        popView!.jobTypeButton.setTitle(data, forState: .Normal)
    }
    
}
