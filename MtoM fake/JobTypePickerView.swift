////
////  JobType.swift
////  MtoM fake
////
////  Created by Student on 1/19/16.
////  Copyright © 2016 Trương Thắng. All rights reserved.
////
//
//import UIKit
//
//class JobTypePickerView: PickerView ,UIPickerViewDataSource{
//    
//    var jobTypePickerView = UIPickerView()
//    var jobTypeButton : JobTypeButton?
//    
//    var dataJobType = ["iOS", "Android","App.net"]
//    
//    override func createPickerView() {
//        super.createPickerView()
//        jobTypePickerView.dataSource = self
//        self.jobTypeButton = JobTypeButton(jobTypePV: self)
//    }
//    
//    
//    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return dataJobType.count
//    }
//    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return dataJobType[row]
//    }
//    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let data = dataJobType[row]
//        popView.jobTypeButton.setTitle(data, forState: .Normal)
//    }
//
//}