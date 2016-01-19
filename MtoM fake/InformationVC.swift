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
    var menuVC : Menu?
    var placePopView : PlacePopView!
    var salaryPopView : SalaryPopView!
    var jobPopView : JobPopView!
    
    var data : [Job] = {
        var result = [Job]()
        
        var item = Job()
        item.title = "Keangnam Pro 0"
        item.income = "1000USD ~ 2000USD"
        item.address = "13st Floor Keangnam Landmark 72"
        item.description = "iOS developer"
        item.job = "Swift Developer"
        result += [item]
        var item2 = Job()
        item2.title = "Keangnam Pro 1"
        item2.income = "140USD ~ 170USD"
        item2.address = "14st Floot Nguyen Tuan 1"
        item2.description = "Apple"
        item2.job = "Java Developer"
        result += [item2]
        var item3 = Job()
        item3.title = "Keangnam Pro 2"
        item3.income = "150USD ~ 1450USD"
        item3.address = "13st Floot Nguyen Tuan 2"
        item3.description = "Apple"
        item3.job = "Object-tive C Developer"
        result += [item3]
        var item4 = Job()
        item4.title = "Keangnam Pro 3"
        item4.income = "145USD ~ 175USD"
        item4.address = "12st Floot Nguyen Tuan 3"
        item4.description = "Apple"
        item4.job = "C# Developer"
        result += [item4]
        return result
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        menuVC = Menu(vc: self, frame: CGRectZero)
        placePopView = PlacePopView(vc: self)
        salaryPopView = SalaryPopView(vc: self)
        jobPopView = JobPopView(vc: self)

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Job Search"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.hidesBackButton = true
        self.edgesForExtendedLayout = UIRectEdge.None
        self.tbv.separatorStyle =  UITableViewCellSeparatorStyle.None
        self.tbv.allowsSelection = false

        layoutMenu()
        createTableView()
        layoutPopView()
        
    }

    func layoutMenu() {
        view.addSubview(menuVC!)
        menuVC!.mt_innerAlign(left: 0, top: 0, right: 0, bottom: nil)
        menuVC!.mt_setHeight(60)
        menuVC!.backgroundColor = UIColor.darkGrayColor()
    }
    
    func layoutPopView() {
        var popViews = [PopView]()
        if let placePV = placePopView {
            popViews += [placePV]
        }
        
        if let salaryPV = salaryPopView {
            popViews += [salaryPV]
        }
        
        if let jobPV = jobPopView {
            popViews += [jobPV]
        }
        for item in popViews {
            view.addSubview(item)
            item.mt_innerAlign(left: 0, top: nil, right: 0, bottom: 0)
            item.mt_innerAlign(left: nil, top: (0, menuVC), right: nil, bottom: nil)
        }
    }
    
    func createTableView() {
        layoutTableView()
        // set delegate, dataSource
        tbv.dataSource = self
        tbv.delegate = self
    }
    
    func layoutTableView() {
        view.addSubview(tbv)
        tbv.mt_innerAlign(left: 0, top: nil, right: 0, bottom: 0)
        tbv.mt_innerAlign(left: nil, top: (0, menuVC), right: nil, bottom: nil)
        self.tbv.backgroundColor = UIColor.headerColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    MARK: - UITableView
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.clearColor()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return CellType.All.rawValue
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cellType: CellType = CellType(rawValue: indexPath.row)!
        
        var cell = tbv.dequeueReusableCellWithIdentifier(cellType.cellId())
        if cell == nil {
            switch cellType.cellId() {
            case "titleCell" :
                cell = TitleCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellType.cellId())
            case "IncomeCell" :
                cell = IncomeCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellType.cellId())
            case "textCell" :
                cell = TextCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellType.cellId())
            case "detailCell" :
                cell = DetailsCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellType.cellId())
            case "applyCell" :
                cell = ApplyCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellType.cellId())
            default : break
            }
        }
        switch cellType {
        case .Title:
            let titleCell = cell as! TitleCell
            titleCell.detailLabel.text = data[indexPath.section].title
            titleCell.detailLabel.tintColor = UIColor.redColor()
        case .Income:
            let incomeCell = cell as! IncomeCell
            incomeCell.textDetailLabel.text = "Income"
            incomeCell.textContentLabel.text = data[indexPath.section].income
        case .Address:
            let addressCell = cell as! TextCell
            addressCell.textDetailLabel.text = "Address"
            addressCell.textContentLabel.text = data[indexPath.section].address
        case .Description:
            let descriptionCell = cell as! TextCell
            descriptionCell.textDetailLabel.text = "Description"
            descriptionCell.textContentLabel.text = data[indexPath.section].description
        case .Jobtype:
            let jobCell = cell as! TextCell
            jobCell.textDetailLabel.text = "Job"
            jobCell.textContentLabel.text = data[indexPath.section].job
        case .GoDetail:
            let goDetailCell = cell as! DetailsCell
            goDetailCell.detailButton.setTitle("Search", forState: .Normal)  
        case .Apply:
            let applyCell = cell as! ApplyCell
            applyCell.webButton.setTitle("Web", forState: .Normal)
            applyCell.callButton.setTitle("Call", forState: .Normal)
        default : break
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
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
