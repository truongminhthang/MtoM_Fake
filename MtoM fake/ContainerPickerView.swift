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
    var defaultRow = 1
    override init(frame: CGRect) {
        super.init(frame: frame)
        createPickerView()
        self.backgroundColor = UIColor.redColor()
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
        pickerView.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        pickerView.delegate = self
        pickerView.dataSource = self
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
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */

}
