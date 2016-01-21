//
//  JobButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobButton: PickerButton {
    
    var jobPickerView = ContainerPickerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setDataForPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setDataForPicker() {
        jobPickerView.data = ["Developer", "Tester", "Trailing"]
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return jobPickerView.data.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return jobPickerView.data[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = jobPickerView.data[row]
        popView.jobButton.setTitle(data, forState: UIControlState.Normal)
    }


}
