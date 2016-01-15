//
//  PickerView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class CityPickerView: UIView,UIPickerViewDataSource,UIPickerViewDelegate {
    var cityPickerView = UIPickerView()
    var popView : PopView!
    convenience init(popView: PopView) {
        self.init()
        self.popView = popView
    }
    
    var dataCityPickerView = ["Thai Binh", "Ha Noi", "TPHCM"]
    
    override func layoutSubviews() {
        createPickerView()
    }
    
    func createPickerView(){
        self.addSubview(cityPickerView)
        cityPickerView.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        cityPickerView.dataSource = self
        cityPickerView.delegate = self
        cityPickerView.selectRow(1, inComponent: 0, animated: true)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataCityPickerView.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataCityPickerView[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       popView.cityButton.setTitle(dataCityPickerView[row], forState: .Normal)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
}
