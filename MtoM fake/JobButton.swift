//
//  JobButton.swift
//  MtoM fake
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobButton: PickerButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setDataForPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setDataForPicker() {
        containerPickerView.data = ["Developer", "Tester", "Trailing"]
    }
}
