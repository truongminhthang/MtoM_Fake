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
    
    convenience init(vc: InformationVC, frame: CGRect) {
        self.init(frame: frame)
        self.vc = vc
        spaceFilter = MenuButton(informationVC: vc)
        salaryFilter = MenuButton(informationVC: vc)
        jobFilter = MenuButton(informationVC: vc)
    }
    
    var vc: InformationVC?
    
    var spaceFilter = MenuButton()
    var salaryFilter = MenuButton()
    var jobFilter = MenuButton()
    
    
    
    
    override func layoutSubviews() {
        spaceFilter = MenuButton(menuBt: self)
        salaryFilter = MenuButton(menuBt: self)
        jobFilter = MenuButton(menuBt: self)
        self.clipsToBounds = true
        setTitleForFilterButton()
        asignSetOfButtonForMenuButton()
        addMenuButtonToSubView()
        mt_createVerticalMenu([spaceFilter, salaryFilter,jobFilter], edge: UIEdgeInsets(top: 4, left: 4, bottom: -5, right: 4), gap: 4, seperateColor: UIColor.grayColor())
        setTextButtonPadding()
//        showPlacePopView()
    }
    
    func setTitleForFilterButton() {
        spaceFilter.title = "Place"
        spaceFilter.subTitle = "Ha Noi"
        
        salaryFilter.title = "Salary"
        salaryFilter.subTitle = "> 1000USD"
        
        jobFilter.title = "Job"
        jobFilter.subTitle = "IT"
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
    
    func setTextButtonPadding() {
        spaceFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)
        salaryFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)
        jobFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)
    }
    func showPlacePopView(){
        vc?.placePopView?.ShowPopView(self)
    }
    func showSafaryPopView() {
        vc?.salaryPopView.ShowPopView(self)
    }
    func showJobPopView() {
        vc?.jobPopView.ShowPopView(self)
    }
    
    func hidePlacePopView() {
        vc?.placePopView?.HidePopView(self)  
    }
    func hideSalaryPopView() {
        vc?.salaryPopView.HidePopView(self)
    }
    func hideJobPopView() {
        vc?.jobPopView.HidePopView(self)
    }
}
