//
//  CallView.swift
//  MtoM fake
//
//  Created by Student on 1/22/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class CallView: UIView {
    var coverButton = UIButton()
    var callBoody = UIView()
    
    override func layoutSubviews() {
        creataCallView()
        super.layoutSubviews()
    }
    
    func creataCallView(){
        creataCoverButton()
        creataCallBody()
    }
    
    func creataCoverButton() {
        self.addSubview(coverButton)
        coverButton.mt_innerAlign(left: 0, top: nil, right: 0, bottom: 0)
        coverButton.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
    }
    
    func creataCallBody() {
        self.addSubview(callBoody)
        callBoody.mt_innerAlign(left: 8, top: 300, right: 8, bottom: 300)
    }
}
