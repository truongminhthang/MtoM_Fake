//
//  ProvinceButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class ProvinceButton: PickerButton {
    var provincePickerView = ContainerPickerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDataForPicker()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupDataForPicker() {
        provincePickerView.data = ["Ha Noi", "TPHCM", "Ca Mau"]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provincePickerView.data.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provincePickerView.data[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = provincePickerView.data[row]
        popView.provinceButton.setTitle(data, forState: UIControlState.Normal)
    }
    
    
    
    
}
