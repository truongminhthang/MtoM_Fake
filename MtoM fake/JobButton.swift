//
//  JobButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobButton: PickerButton {
    
    var jobPickerView = PickerView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    var dataJob = ["Developer", "Tester","Trailing"]
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataJob.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataJob[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataJob[row]
        popView!.jobButton.setTitle(data, forState: .Normal)
    }
}
