//
//  CallView.swift
//  MtoM fake
//
//  Created by Student on 1/22/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

enum CallCellType: Int {
    case Title
    case Description
    case Jobtype
//    case Phonenumber
    case Apply
    case All
    func cellId() -> String{
        switch self {
        case .Title:
            return "titleCell"
        case .Description:
            return "textCell"
        case .Jobtype:
            return "textCell"
//        case .Phonenumber:
//            return "phoneCell"
        case .Apply:
            return "applyCell"
        case .All:
            return ""
        }
    }
}


class CallView: UIView, UITableViewDataSource,UITableViewDelegate {
    var coverButton = UIButton()
    var callBoody = UIView()
    var callTableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        creataCallView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        creataCallView()
    }
    
    func creataCallView(){
        creataCoverButton()
        creataCallBody()
        createCallTableView()
    }
    
    func creataCoverButton() {
        self.addSubview(coverButton)
        coverButton.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        coverButton.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
        coverButton.addTarget(self, action: "hideCallView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func creataCallBody() {
        self.addSubview(callBoody)
        callBoody.mt_InnerAlign(PinPosition.Center, space: 0, size: CGSize(width: 300, height: 200))
    }
    
    func hideCallView(){
        self.removeFromSuperview()
    }
    
    // MARK : create CallTableView 
    
    var dataCallTbv : [dataCallTableView] =  {
        var result = [dataCallTableView]()
        var item = dataCallTableView()
        item.title = "KeangNam pro 01"
        item.description = "13st floor Keangnam Landmark 72"
        item.job = ""
//        item.phoneNumber = "0123-456-789"
        
        result += [item]
        return result
    }()
    
    func createCallTableView() {
        layoutCallTableView()
        callTableView.dataSource = self
        callTableView.delegate = self
        callTableView.roundBorder()
    }
    
    func layoutCallTableView() {
        callBoody.addSubview(callTableView)
        callTableView.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.backgroundColor = UIColor.clearColor()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return dataCallTbv.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return CallCellType.All.rawValue
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let callCellType: CallCellType = CallCellType(rawValue: indexPath.row)!
        
        var cell = callTableView.dequeueReusableCellWithIdentifier(callCellType.cellId())
        if cell == nil {
            switch callCellType.cellId() {
            case "titleCell" :
                cell = TitleCallCell(style: UITableViewCellStyle.Default, reuseIdentifier: callCellType.cellId())
            case "textCell" :
                cell = TextCell(style: UITableViewCellStyle.Default, reuseIdentifier: callCellType.cellId())
            case "applyCell" :
                cell = DetailsCell(style: UITableViewCellStyle.Default, reuseIdentifier: callCellType.cellId())
            default : break
            }
        }
        switch callCellType {
        case .Title:
            let titleCell = cell as! TitleCallCell
            titleCell.textLabel?.text = dataCallTbv[indexPath.section].title
            titleCell.textLabel?.textAlignment = NSTextAlignment.Center
            titleCell.backgroundColor = UIColor.redColor()
            titleCell.textLabel?.textColor = UIColor.whiteColor()
        case .Description:
            let descriptionCell = cell as! TextCell
            descriptionCell.textDetailLabel.text = "Description"
            descriptionCell.textContentLabel.text = dataCallTbv[indexPath.section].description
        case .Jobtype:
            let jobCell = cell as! TextCell
            jobCell.textDetailLabel.text = "Job"
            jobCell.textContentLabel.text = dataCallTbv[indexPath.section].job
        case .Apply:
            let applyCell = cell as! DetailsCell
            applyCell.detailButton.setTitle("Show", forState: UIControlState.Normal)
        default : break
        }
        return cell!
    }
    
    internal func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        let heightCell : CallCellType = CallCellType(rawValue: indexPath.row)!
        switch heightCell {
        case .Apply:
            return 60
        default:
            return 40
        }
    }
}
