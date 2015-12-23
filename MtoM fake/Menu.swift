//
//  Menu.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/23/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class Menu: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    let spaceFilter = MenuButton()
    let salaryFilter = MenuButton()
    let jobFilter = MenuButton()
    override func layoutSubviews() {
        self.clipsToBounds = true
        setTitleForFilterButton()
        asignSetOfButtonForMenuButton()
        addMenuButtonToSubView()
        mt_splitVerticallyByViews([spaceFilter, salaryFilter,jobFilter], edge: UIEdgeInsets(top: 4, left: 4, bottom: -5, right: 4), gap: 4)
    }
    
    func setTitleForFilterButton() {
        spaceFilter.setTitle("space \nFilter", forState: UIControlState.Normal)
        salaryFilter.setTitle("Salary \nFilter ", forState: .Normal)
        jobFilter.setTitle("Job \nFilter", forState: UIControlState.Normal)
    }
    
    func asignSetOfButtonForMenuButton() {
        let buttons = [spaceFilter,salaryFilter,jobFilter]
        for item in buttons {
            item.otherButtons = buttons
        }
    }
    
    func addMenuButtonToSubView() {
        self.addSubview(spaceFilter)
        self.addSubview(salaryFilter)
        self.addSubview(jobFilter)
    }
    
    

}
