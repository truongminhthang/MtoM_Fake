//
//  ProvinceButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class ProvinceButton: PickerButton {
    var provincePickerView = PickerView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    var dataProvincePickerView = ["Thai Binh","TPHCM","Ha Noi"]
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataProvincePickerView.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataProvincePickerView[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataProvincePickerView[row]
        popView!.provinceButton.setTitle(data, forState: UIControlState.Normal)
    }
    
    
    
    
}
