//
//  TestCityPickerView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class TestCityPickerView: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{
    
    var textField = UITextField()
    var Label = UILabel()
    var cityPickerView = UIPickerView()
    var VC : InformationVC?
    var dataCityPickerView = ["Thai Binh", "Ha Noi", "TPHCM"]
    
    convenience init (VC : InformationVC){
        self.init()
        self.VC = VC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPickerView()
        
        cityPickerView.delegate = self
        cityPickerView.dataSource = self
        // Do any additional setup after loading the view.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupPickerView() {
        view.addSubview(textField)
        textField.mt_innerAlign(left: 8, top: 50, right: 8, bottom: nil)
        textField.mt_setHeight(20)
        textField.textAlignment = NSTextAlignment.Center
        
        view.addSubview(Label)
        Label.mt_innerAlign(left: 8, top: nil, right: 8, bottom: nil)
        Label.mt_innerAlign(left: nil, top: (16, textField), right: nil, bottom: nil)
        Label.textAlignment = NSTextAlignment.Center
        Label.text = "Selected"
        Label.mt_setHeight(20)
        
        view.addSubview(cityPickerView)
        cityPickerView.mt_innerAlign(left: 8, top: nil, right: 8, bottom: 0)
        cityPickerView.mt_innerAlign(left: nil, top: (8, Label), right: nil, bottom: nil)
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
        textField.text = dataCityPickerView[row]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
