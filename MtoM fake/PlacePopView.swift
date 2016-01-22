//
//  PlacePopView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PlacePopView: PopView {

    let cityButton = CityButton()
    let provinceButton = ProvinceButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        higherLabelTitle = "City"
        lowerLabelTitle = "Province"
        higherButton = cityButton
        lowerButton = provinceButton
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func createPopBody() {
        super.createPopBody()
    }
}
