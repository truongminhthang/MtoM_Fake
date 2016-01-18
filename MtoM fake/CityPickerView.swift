//
//  PickerView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class CityPickerView: PickerView , UIPickerViewDataSource {
    var cityPickerView = UIPickerView()
    
    var dataCityPickerView = ["Nam Dinh","Hai Phong","Hai Duong"]
    
    override func createPickerView(){
        super.createPickerView()
        cityPickerView.dataSource = self
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataCityPickerView.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataCityPickerView[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataCityPickerView[row]
       popView.cityButton.setTitle(data, forState: .Normal)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
}
