//
//  Menu.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/23/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class Menu: UIView {
    
    var vc: InformationVC?
    var spaceFilter : MenuButton
    var salaryFilter : MenuButton
    var jobFilter : MenuButton
    
    
    init(vc: InformationVC, frame: CGRect) {
        self.vc = vc
        spaceFilter = MenuButton()
        salaryFilter = MenuButton()
        jobFilter = MenuButton()
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setupMenuButton()
        
        mt_createVerticalMenu([spaceFilter, salaryFilter,jobFilter], edge: UIEdgeInsets(top: 4, left: 4, bottom: -5, right: 4), gap: 4, seperateColor: UIColor.grayColor())
    }
    
    func setupMenuButton() {
        setupPlaceMenuButton()
        setupSalaryMenuButton()
        setupJobMenuButton()
        asignSetOfButtonForMenuButton()
    }
    
    private func setupPlaceMenuButton() {
        self.addSubview(spaceFilter)
        spaceFilter.title = "Place"
        spaceFilter.subTitle = "Ha Noi"
        spaceFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)

    }
    
    private func setupSalaryMenuButton() {
        self.addSubview(salaryFilter)
        salaryFilter.title = "Salary"
        salaryFilter.subTitle = "> 1000USD"
        salaryFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)

    }
    
    private func setupJobMenuButton() {
        self.addSubview(jobFilter)
        jobFilter.title = "Job"
        jobFilter.subTitle = "IT"
        jobFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)

    }
    
    func asignSetOfButtonForMenuButton() {
        let buttons = [spaceFilter,salaryFilter,jobFilter]
        for item in buttons {
            item.otherButtons = buttons
        }
    }
}