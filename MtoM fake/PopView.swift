//
//  PopView.swift
//  MtoM fake
//
//  Created by Student on 1/14/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class PopView: UIView {

    var coverButton = UIButton()
    var popBody = UIView()
    let line1 = UIView()
    let line2 = UIView()
    let line3 = UIView()
    let line4 = UIView()
    var cityLabel = UILabel()
    var provinceLabel = UILabel()
    var cityButton = UIButton()
    var provinceButton = UIButton()
    var clickButton = UIButton()
    var cityPickerView : CityPickerView?
    var provincePickerView : ProvincePickerView?
    var vc : InformationVC?
    
    convenience init(vc: InformationVC) {
        self.init()
        self.vc = vc
    }
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        cityPickerView = CityPickerView(popView: self)
        provincePickerView = ProvincePickerView(popView: self)
        createPopFilter()
        
    }
    
    func createPopFilter(){
        createCoverButton()
        createPopBody()
        createLine4()
        
    }
    
    func createLine4(){
        self.addSubview(line4)
        line4.mt_innerAlign(left: 4, top: nil, right: 4, bottom: 0)
        line4.mt_innerAlign(left: nil, top: (150, popBody), right: nil, bottom: nil)
    }
    
    func createCoverButton(){
        self.addSubview(coverButton)
        coverButton.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        coverButton.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
        coverButton.addTarget(self, action: "hidePopView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func createPopBody(){
        self.addSubview(popBody)
        popBody.mt_innerAlign(left: 4, top: 4, right: 4, bottom: nil)
        popBody.mt_setHeight(150)
        popBody.backgroundColor = UIColor.whiteColor()
        popBody.mt_splitHorizontallyByViews([line1,line2,line3], edge: UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8), gap: 8)
        popBody.roundBorder()
        createCityLabel("")
        createProvinceLabel("")
        createCityButton()
        createProvinceButton()
        createClickButton()
        layoutPickerView()
        
    }
    
    func createCityLabel(titleLable : String){
        cityLabel = createLabel()
        line1.addSubview(cityLabel)
        cityLabel.mt_innerAlign(left: 8, top: 0, right: nil, bottom: 0)
        cityLabel.mt_setWidth(80)
        cityLabel.text = titleLable
    }
    
    func createProvinceLabel(titleLabel: String){
        provinceLabel = createLabel()
        line2.addSubview(provinceLabel)
        provinceLabel.mt_innerAlign(left: 8, top: 0, right: nil, bottom: 0)
        provinceLabel.mt_setWidth(80)
        provinceLabel.text = titleLabel
    }
    
    func createCityButton(){
        cityButton = createButton()
        line1.addSubview(cityButton)
        cityButton.mt_innerAlign(left: nil, top: 4, right: 8, bottom: 4)
        cityButton.mt_innerAlign(left: (16, cityLabel), top: nil, right: nil, bottom: nil)
        cityButton.setTitle(cityPickerView?.dataCityPickerView.first, forState: UIControlState.Normal)
        cityButton.addTarget(self, action: "showCityPickerView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    
 
    func createProvinceButton(){
        provinceButton = createButton()
        line2.addSubview(provinceButton)
        provinceButton.mt_innerAlign(left: nil, top: 4, right: 8, bottom: 4)
        provinceButton.mt_innerAlign(left: (16, provinceLabel), top: nil, right: nil, bottom: nil)
        provinceButton.setTitle(provincePickerView?.dataProvincePickerView.first, forState: UIControlState.Normal)
        provinceButton.addTarget(self, action: "showProvincePickerView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func createClickButton(){
        clickButton = createButton()
        line3.addSubview(clickButton)
        clickButton.mt_innerAlign(left: 60, top: 0, right: 60, bottom: 0)
        clickButton.setTitle("Click", forState: .Normal)
        clickButton.backgroundColor = UIColor.redColor()
        clickButton.addTarget(self, action: "showTableView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func layoutPickerView(){
        var pickerViews = [PickerView]()
        if let cityPV = cityPickerView {
            pickerViews += [cityPV]
        }
        if let provincePV = provincePickerView {
            pickerViews += [provincePV]
        }
        for item in pickerViews {
            line4.addSubview(item)
            item.hidden = true
            item.mt_innerAlign(left: 4, top: 0, right: 4, bottom: -5)
            item.backgroundColor = UIColor.whiteColor()
            item.roundBorder()
        }
    }
    
    func createLabel() -> UILabel{
        let label = UILabel()
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.blackColor()
        return label
    }
    
    func createButton() -> UIButton {
        let button = UIButton(type: UIButtonType.System)
        button.roundBorder()
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        button.layer.borderColor = UIColor.borderColor().CGColor
        button.layer.borderWidth = 1
        return button
    }
    
    func showCityPickerView() {
        cityPickerView?.hidden = false
    }
    
    func showProvincePickerView() {
        provincePickerView?.hidden = false
    }
    
    func hidePickerView() {
        cityPickerView?.hidden = true
        provincePickerView?.hidden = true
    }
    
    func showPopView(sender: AnyObject) {
        self.hidden = false
    }

    func hidePopView(sender: AnyObject) {
        self.hidden = true
    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    

}
