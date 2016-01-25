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
    var dict : [String: NSLayoutConstraint]!
    override init(frame: CGRect) {
        super.init(frame: frame)
        createPickerView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createPickerView()
    }
    
    func showPicker() {
        let constraintBottom = dict["innerBottomToBottom"]
        UIView.animateWithDuration(0.5) { () -> Void in
            constraintBottom?.constant = 0
            self.layoutIfNeeded()
        }
    }
    
    func hidePickerView(sender : AnyObject) {
        self.hidden = true
    }
    
    func createPickerView(){
        self.addSubview(pickerView)
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.roundBorder()
        dict = pickerView.mt_InnerAlign(PinPosition.LowCenter, space: 0, size: CGSize(width: 300, height: 120))
        print(dict)
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
