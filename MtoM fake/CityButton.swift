//
//  CityButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class CityButton: PickerButton {
    
    var cityPickerView = PickerView()
    convenience init(cityPV: PickerView) {
        self.init()
        self.cityPickerView = cityPV
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        showCityPickerView()
    }
    
    func showCityPickerView() {
        cityPickerView.hidden = false
    }
    
    var dataCityPickerView = ["Nam Dinh","Hai Phong","Hai Duong"]
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataCityPickerView.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataCityPickerView[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataCityPickerView[row]
        popView!.cityButton!.setTitle(data, forState: .Normal)
    }  
}
