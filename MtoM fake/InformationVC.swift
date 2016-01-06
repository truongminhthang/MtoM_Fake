//
//  InformationVC.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit





enum CellType: Int {
    case Title
    case Income
    case Address
    case Description
    case Jobtype
    case GoDetail
    case Apply
    case All
    func cellId() -> String{
        switch self {
        case .Title:
            return "titleCell"
        case .Income:
            return "IncomeCell"
        case .Address:
            return "textCell"
        case .Description:
            return "textCell"
        case .Jobtype:
            return "textCell"
        case .GoDetail:
            return "detailCell"
        case .Apply:
            return "applyCell"
        case .All:
            return ""
        }
    }
}

class InformationVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var tbv = UITableView()
    var data : [Job] = {
        var r = [Job]()
        
        var item = Job()
        item.title = "Framgia tuyen dung lap trinh vien"
        item.income = "1000USD ~ 2000USD"
        item.address = "13st Floor Keangnam Landmark 72"
        item.description = "iOS developer"
        r += [item]
        var item2 = Job()
        item2.title = "Keangnam Pro"
        item2.income = "1450USD ~ 1750USD"
        item2.address = "14st Floot Nguyen Tuan"
        item2.description = "Apple"
        r += [item2]
        var item3 = Job()
        item3.title = "Keangnam Pro"
        item3.income = "1450USD ~ 1750USD"
        item3.address = "14st Floot Nguyen Tuan"
        item3.description = "Apple"
        r += [item3]
        var item4 = Job()
        item4.title = "Keangnam Pro"
        item4.income = "1450USD ~ 1750USD"
        item4.address = "14st Floot Nguyen Tuan"
        item4.description = "Apple"
        r += [item4]
        return r
    }()
    
    var menu = Menu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Job Search"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.hidesBackButton = true
        self.edgesForExtendedLayout = UIRectEdge.None
        self.tbv.separatorStyle =  UITableViewCellSeparatorStyle.None
        
        layoutMenu()
        createTableView()
        createPopFilter()
    }
    
    
    func layoutMenu() {
        view.addSubview(menu)
        menu.mt_innerAlign(left: 0, top: 0, right: 0, bottom: nil)
        menu.mt_setHeight(60)
        menu.backgroundColor = UIColor.darkGrayColor()
    }
    
    func createPopFilter() {
        let pop = UIView()
        view.addSubview(pop)
        
        pop.mt_innerAlign(left: (0, nil), top: (0, menu), right: (0, nil), bottom: (0,nil))
        
        let coverButton = createCoverButton()
        pop.addSubview(coverButton)
        coverButton.mt_InnerAlign(allSpace: 0)
        
        let popBody = UIView()
        pop.addSubview(popBody)
        popBody.mt_innerAlign(left: 4, top: 0, right: 4, bottom: nil)
        popBody.mt_setHeight(150)
        popBody.roundBorder()
        popBody.backgroundColor = UIColor.whiteColor()
        
        let cityLabel = creatLabel("City : ")
        popBody.addSubview(cityLabel)
        
        cityLabel.mt_innerAlign(left: 16, top: 16, right: nil, bottom: nil)
        cityLabel.setHeight(19)
        
        
        let laybel1_2 = creatLabel("Province : ")
        popBody.addSubview(laybel1_2)
        laybel1_2.mt_innerAlign(left: 16, top: 30, right: nil, bottom: nil)
        laybel1_2.setHeight(19)
        
        let popBody1 = UIView()
        pop.addSubview(popBody1)
        popBody1.mt_innerAlign(left: 4, top: 0, right: 4, bottom: nil)
        popBody1.mt_setHeight(5)
        popBody1.backgroundColor = UIColor.whiteColor()
        
    }
    
    func createCoverButton() -> UIButton {
        let coverButton = UIButton()
        coverButton.setTitle("", forState: UIControlState.Normal)
        coverButton.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        return coverButton
    }
    
    func creatLabel(title: String) -> UILabel {
        let cityLabel = UILabel()
        cityLabel.text = title
        cityLabel.tintColor = UIColor.blackColor()
        
        return cityLabel
    }
    
    func setupTableView() {
        layoutTableView()
        
        
        
    }
    
    func createTableView() {
        layoutTableView()
        // set delegate, dataSource
        tbv.dataSource = self
        tbv.delegate = self
    }
    
    func layoutTableView() {
        view.addSubview(tbv)
        tbv.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return CellType.All.rawValue
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cellType: CellType = CellType(rawValue: indexPath.row)!
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellType.cellId())
        if cell == nil {
            switch cellType.cellId() {
            case "titleCell":
                cell = TitleCell(style: UITableViewCellStyle.Default, reuseIdentifier: "titleCell")
            case "IncomeCell":
                cell = IncomeCell(style: UITableViewCellStyle.Default, reuseIdentifier: "IncomeCell")
            case "textCell":
                cell = TextCell(style: UITableViewCellStyle.Default, reuseIdentifier: "textCell")
            case "detailsCell":
                cell = DetailsCell(style: UITableViewCellStyle.Default, reuseIdentifier: "detailsCell")
                case "applyCell":
                cell = ApplyCell(style: UITableViewCellStyle.Default, reuseIdentifier: "applyCell")
            default:
                break
                
            }
        }
        switch cellType {
        case .Title:
            let titleCell = cell as! TitleCell
            titleCell.job = data[indexPath.section]
        case .Income:
            let incomeCell = cell as! TextCell
            incomeCell.textDetailLabel.text = "Income"
            incomeCell.textContentLabel.text = data[indexPath.section].income
            incomeCell.textContentLabel.textColor = UIColor.redColor()
        case .Address:
            let addressCell = cell as! TextCell
            addressCell.textDetailLabel.text = "Address"
            addressCell.textContentLabel.text = data[indexPath.section].address
            
        case .Description:
            let descriptionCell = cell as! TextCell
            descriptionCell.textDetailLabel.text = "Description"
            descriptionCell.textContentLabel.text = data[indexPath.section].description
        case .Jobtype:
            let jobtypeCell = cell as! TextCell
            jobtypeCell.textDetailLabel.text = "JobType"
            jobtypeCell.textContentLabel.text = data[indexPath.section].address
        default:
            return UITableViewCell()
        }
        return cell!
        
    }
    
    internal func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        let heightCell : CellType = CellType(rawValue: indexPath.row)!
        switch heightCell {
        case .Title:
            return 80
        case .GoDetail:
            return 50
        case .Apply:
            return 60
        default:
            return 40
        }
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
