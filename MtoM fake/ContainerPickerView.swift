//
//  PickerView.swift
//  MtoM fake
//
//  Created by Student on 1/18/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class ContainerPickerView: UIView ,UIPickerViewDelegate, UIPickerViewDataSource{
    var pickerView = UIPickerView()
    var data = [String]()
    var defaultRow = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        createPickerView()
        backgroundColor = UIColor.redColor()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createPickerView()
    }
    
    func hidePickerView(sender : AnyObject) {
        self.hidden = true
    }
    
    func createPickerView(){
        self.addSubview(pickerView)
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.roundBorder()
        pickerView.mt_innerAlign(left: 0, top: nil, right: 0, bottom: 0)
        pickerView.mt_setHeight(150)
        pickerView.backgroundColor = UIColor.whiteColor()
        pickerView.selectRow(defaultRow, inComponent: 0, animated: true)
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return data.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return data[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
       
    }
}
