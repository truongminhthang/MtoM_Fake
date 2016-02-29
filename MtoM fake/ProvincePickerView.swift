////
////  ProvincePickerView.swift
////  MtoM fake
////
////  Created by Student on 1/13/16.
////  Copyright © 2016 Trương Thắng. All rights reserved.
////
//
//import UIKit
//
//class ProvincePickerView: PickerView , UIPickerViewDataSource{
//
//    var provincePickerView = UIPickerView()
//    var provinceButton : ProvinceButton?
//    
//    var dataProvincePickerView = ["Thai Binh","TPHCM","Ha Noi"]
//    
//    override func createPickerView() {
//        super.createPickerView()
//        provincePickerView.dataSource = self
//        self.provinceButton = ProvinceButton(provincePV: self)
//    }
//    
//    
//    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return dataProvincePickerView.count
//    }
//    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return dataProvincePickerView[row]
//    }
//    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let data = dataProvincePickerView[row]
//        popView.provinceButton.setTitle(data, forState: UIControlState.Normal)
//    }
//
//    /*
//    // Only override drawRect: if you perform custom drawing.
//    // An empty implementation adversely affects performance during animation.
//    override func drawRect(rect: CGRect) {
//        // Drawing code
//    }
//    */
//
//}
