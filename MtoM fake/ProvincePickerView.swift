//
//  ProvincePickerView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class ProvincePickerView: PickerView , UIPickerViewDataSource{

    var provincePickerView = UIPickerView()
    
    var dataProvincePickerView = ["Thai Binh","TPHCM","Ha Noi"]
    
    override func createPickerView() {
        super.createPickerView()
        provincePickerView.dataSource = self
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataProvincePickerView.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataProvincePickerView[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        popView.provinceButton.setTitle(dataProvincePickerView[row], forState: UIControlState.Normal)
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
