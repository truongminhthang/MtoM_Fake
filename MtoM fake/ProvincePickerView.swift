//
//  ProvincePickerView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class ProvincePickerView: UIView ,UIPickerViewDataSource,UIPickerViewDelegate{

    var provincePickerView = UIPickerView()
    var popView : PopView!
    convenience init(popView: PopView) {
        self.init()
        self.popView = popView
    }
    
    var dataProvincePickerView = ["Thai Binh", "Ha Noi", "TPHCM"]
    
    override func layoutSubviews() {
        self.addSubview(provincePickerView)
        provincePickerView.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        provincePickerView.dataSource = self
        provincePickerView.delegate = self
        provincePickerView.selectRow(1, inComponent: 0, animated: true)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
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
