//
//  PickerViewForPopView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PickerViewForPopView: UIPickerView,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var pickerViewOfPop = UIPickerView()
    

    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return "dasda"
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
