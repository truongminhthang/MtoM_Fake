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
    case Phonenumber
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
        case .Phonenumber:
            return "phoneCell"
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
    var vcCV = InformationVC()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        creataCallView()
    }
    init( vc: InformationVC) {
        self.init()
        self.vcCV = vc
    }

   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
    
    func creataCallView(){
        creataCoverButton()
        creataCallBody()
        createCallTableView()
    }
    
    func creataCoverButton() {
        self.addSubview(coverButton)
        coverButton.mt_InnerAlign(allSpace: 0)
        coverButton.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
        coverButton.addTarget(self, action: "hideCallView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func creataCallBody() {
        self.addSubview(callBoody)
        callBoody.mt_InnerAlign(PinPosition.Center, space: 0, size: CGSize(width: 310, height: 230))
    }
    
    func hideCallView(){
        self.removeFromSuperview()
    }
    
    // MARK : create CallTableView
    
    func createCallTableView() {
        layoutCallTableView()
        callTableView.dataSource = self
        callTableView.delegate = self
        callTableView.roundBorder()
        self.callTableView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.callTableView.allowsSelection = false
    }
    
    func layoutCallTableView() {
        callBoody.addSubview(callTableView)
        callTableView.mt_InnerAlign(allSpace: 0)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.backgroundColor = UIColor.clearColor()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return CallCellType.All.hashValue
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let callCellType: CallCellType = CallCellType(rawValue: indexPath.row)!
        var dataCallView = vcCV.data
        var cell = callTableView.dequeueReusableCellWithIdentifier(callCellType.cellId())
        if cell == nil {
            switch callCellType.cellId() {
            case "titleCell" :
                cell = TitleCallCell(style: UITableViewCellStyle.Default, reuseIdentifier: callCellType.cellId())
            case "textCell" :
                cell = TextCallCell(style: UITableViewCellStyle.Default, reuseIdentifier: callCellType.cellId())
            case "phoneCell" :
                cell = PhoneCell(style: UITableViewCellStyle.Default, reuseIdentifier: callCellType.cellId())
            case "applyCell" :
                cell = ApplyCallCell(style: UITableViewCellStyle.Default, reuseIdentifier: callCellType.cellId())
            default : break
            }
        }
        switch callCellType {
        case .Title:
            let titleCell = cell as! TitleCallCell
            titleCell.textLabel?.text = dataCallView[indexPath.section].title
            titleCell.textLabel?.textAlignment = NSTextAlignment.Center
            titleCell.backgroundColor = UIColor.redColor()
            titleCell.textLabel?.textColor = UIColor.whiteColor()
        case .Description:
            let descriptionCell = cell as! TextCallCell
            descriptionCell.textDetailLabel.text = "Description"
            descriptionCell.textContentLabel.text = dataCallView[indexPath.section].description
        case .Jobtype:
            let jobCell = cell as! TextCallCell
            jobCell.textDetailLabel.text = "Job"
            jobCell.textContentLabel.text = dataCallView[indexPath.section].job
        case .Phonenumber:
            let phoneCell = cell as! PhoneCell
            phoneCell.textDetailLabel.text = "Phone"
            phoneCell.textContentLabel.text = dataCallView[indexPath.section].phonenumber
            phoneCell.textContentLabel.textColor = UIColor.redColor()
        case .Apply:
            let applyCell = cell as! ApplyCallCell
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
