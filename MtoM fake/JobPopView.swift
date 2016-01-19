//
//  JobPopView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class JobPopView: PopView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override func createPopBody() {
        super.createPopBody()
        createCityLabel("Job Type")
        createProvinceLabel("Job")
    }
}
