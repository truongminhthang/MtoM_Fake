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
    var data : [String]
    var defaultRow = 0
    var dict : [String: NSLayoutConstraint]!
    weak var pickerButton : PickerButton!
    
    convenience init(pickerButton: PickerButton, data: [String]) {
        self.init(frame: CGRectZero, pickerButton: pickerButton, data: data)

    }
    
    init(frame: CGRect, pickerButton: PickerButton, data: [String]) {
        self.pickerButton = pickerButton
        self.data = data
        super.init(frame: frame)
        createPickerView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createPickerView(){
        self.addSubview(pickerView)
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.roundBorder()
        dict = pickerView.mt_InnerAlign(PinPosition.LowCenter, space: 0, size: CGSize(width: 312, height: 120))
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
        let dataPicker = data[row]
       pickerButton.setTitle(dataPicker, forState: UIControlState.Normal)
    }
    
    func showPicker() {
        UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseOut, animations: {
            var pickerBottomFrame = self.pickerView.frame
            pickerBottomFrame.origin.y -= pickerBottomFrame.size.height
            
            self.pickerView.frame = pickerBottomFrame
            }, completion: { finished in
        })
    }
    
    func hidePickerView() {
        UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseOut, animations: {
            var pickerBottomFrame = self.pickerView.frame
            pickerBottomFrame.origin.y += pickerBottomFrame.size.height
            
            self.pickerView.frame = pickerBottomFrame
            }, completion: { finished in
                self.removeFromSuperview()
        })
    }
    
    func selected() {
        pickerButton.selected = false
    }
}
