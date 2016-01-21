//
//  SalaryButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class SalaryButton: PickerButton {
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDataForPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupDataForPicker() {
        containerPickerView.data = ["500$ -> 1000$", "10trVND -> 20trVND", "5000 Euro"]
    }
  
}
