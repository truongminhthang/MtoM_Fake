//
//  PickerViewController.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/7/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController ,UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var AgePickerView: UIPickerView!
    
    @IBOutlet weak var AgeButton: UIButton!
    
   
    
    var AgePicker : [String] = {
        var result = [String]()
        var date = NSDate()
        let formater = NSDateFormatter()
        formater.dateFormat = "yyyy"
        let cerrentYear = Int(formater.stringFromDate(date))!
        for age in 15 ... 75 {
            var fromYear : Int!
            var toYear : Int!
            
            fromYear = cerrentYear - age
            fromYear = fromYear % 100
            toYear = (fromYear + 1) % 100
            
            let fromYearString = fromYear < 10 ? "0\(fromYear)": "\(fromYear)"
            let toYearString = toYear < 10 ? "0\(toYear)": "\(toYear)"
            
            result += ["\(age) Age (born in \(fromYearString) ~ \(toYearString))"]
        }
        
        
        return result
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Picker Age"
        // Do any additional setup after loading the view.
        AgeButton.roundBorder()
        self.AgePickerView.selectRow(20, inComponent: 0, animated: true)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
    }
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationItem.backBarButtonItem?.title = ""
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return AgePicker.count
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return AgePicker[row]
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
