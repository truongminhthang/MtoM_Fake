//
//  SalaryMenuButton.swift
//  MtoM fake
//
//  Created by Student on 1/21/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class SalaryMenuButton: MenuButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        popView = SalaryPopView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
