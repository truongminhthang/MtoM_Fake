//
//  JobPopView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobPopView: PopView {

    var jobTypeButton = PickerButton()
    var jobButton = PickerButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        higherLabelTitle = "Job Type"
        lowerLabelTitle = ""
        higherButton = jobTypeButton
        lowerButton = jobButton
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override func createPopBody() {
        super.createPopBody()
    }
}
