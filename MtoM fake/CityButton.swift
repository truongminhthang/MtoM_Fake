//
//  CityButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class CityButton: PickerButton {
    var cityPickerView = ContainerPickerView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDataForPicker()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupDataForPicker() {
        cityPickerView.data = ["Nam Dinh","Thai Binh", "Ha Noi"]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return cityPickerView.data.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return cityPickerView.data[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        popView.cityButton.setTitle(cityPickerView.data[row], forState: UIControlState.Normal)
    }
    
}
