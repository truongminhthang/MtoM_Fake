////
////  SalaryPickerView.swift
////  MtoM fake
////
////  Created by Student on 1/19/16.
////  Copyright © 2016 Trương Thắng. All rights reserved.
////
//
//import UIKit
//
//class SalaryPickerView: PickerView,UIPickerViewDataSource {
//    var salaryPickerView = UIPickerView()
//    var salaryButton: SalaryButton?
//    var dataSalary = ["500$ - 1000$", "5trVND - 10trVND", "1000"]
//    
//    override func createPickerView() {
//        super.createPickerView()
//        salaryPickerView.dataSource = self
//        self.salaryButton = SalaryButton(salaryPV: self)
//    }
//    
//    
//    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return dataSalary.count
//    }
//    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return dataSalary[row]
//    }
//    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let data = dataSalary[row]
//        popView.salaryButton.setTitle(data, forState: .Normal)
//    }
//
//}
