//
//  CityButton.swift
//  MtoM fake
//
//  Created by Student on 1/19/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class CityButton: PickerButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        if selected {
            popView?.cityPickerView?.hidden = false
        }else {
            popView?.cityPickerView?.hidden = true
        }
    }
    
}
