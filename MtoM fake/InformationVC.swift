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
        item.job = "aabbcc"
        r += [item]
        var item2 = Job()
        item2.title = "Keangnam Pro"
        item2.income = "1450USD ~ 1750USD"
        item2.address = "14st Floot Nguyen Tuan"
        item2.description = "Apple"
        item2.job = "bbccdd"
        r += [item2]
        var item3 = Job()
        item3.title = "Keangnam Pro"
        item3.income = "1450USD ~ 1750USD"
        item3.address = "14st Floot Nguyen Tuan"
        item3.description = "Apple"
        item3.job = "ccddee"
        r += [item3]
        var item4 = Job()
        item4.title = "Keangnam Pro"
        item4.income = "1450USD ~ 1750USD"
        item4.address = "14st Floot Nguyen Tuan"
        item4.description = "Apple"
        item4.job = "djashdoiash"
        r += [item4]
        return r
    }()
    
    var menu = Menu()
    var menuButton = MenuButton()
    let pop = UIView()
    let popBody = UIView()
    var coverButton = UIButton()
    var cityLabel = UILabel()
    var provinceLabel = UILabel()
    let cityTextFeild = UITextField()
    let clickButton = UIButton()
    let provinceTextFeild = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Job Search"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.hidesBackButton = true
        self.edgesForExtendedLayout = UIRectEdge.None
        self.tbv.separatorStyle =  UITableViewCellSeparatorStyle.None
        
        tbv.registerClass(DetailsCell.self, forCellReuseIdentifier: "detailCell")
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
        view.addSubview(pop)
        pop.mt_innerAlign(left: (0, nil), top: (0, menu), right: (0, nil), bottom: (0,nil))
        coverButton = createCoverButton()
        pop.addSubview(coverButton)
        coverButton.mt_InnerAlign(allSpace: 0)
        
        createPopbody()
        createCityLabel()
        createProvinceLabel()
        createCityTextFeild()
        createProvinceTextFeild()
        creataClickButton()
    }
    
    func createPopbody(){
        pop.addSubview(popBody)
        popBody.mt_innerAlign(left: 4, top: 0, right: 4, bottom: nil)
        popBody.mt_setHeight(150)
        popBody.roundBorder()
        popBody.backgroundColor = UIColor.whiteColor()
    }
    
    func createCityLabel(){
        cityLabel = creatLabel("City : ")
        popBody.addSubview(cityLabel)
        cityLabel.mt_innerAlign(left: 16, top: 16, right: nil, bottom: nil)
    }
    
    func createProvinceLabel(){
        provinceLabel = creatLabel("Province : ")
        popBody.addSubview(provinceLabel)
        provinceLabel.mt_innerAlign(left: 16, top: nil, right: nil, bottom: nil)
        provinceLabel.mt_innerAlign(left: nil, top: (16, cityLabel), right: nil, bottom: nil)
    }
    
    func createCityTextFeild(){
        popBody.addSubview(cityTextFeild)
        cityTextFeild.mt_innerAlign(left: nil, top: 24, right: 16, bottom: nil)
        cityTextFeild.mt_innerAlign(left: (16, cityLabel), top: nil, right: nil, bottom: nil)
        cityTextFeild.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
    }
    
    func createProvinceTextFeild(){
        popBody.addSubview(provinceTextFeild)
        provinceTextFeild.mt_innerAlign(left: (16, provinceLabel), top: (16, cityTextFeild), right: nil, bottom: nil)
        provinceTextFeild.mt_innerAlign(left: nil, top: nil, right: 16, bottom: nil)
        provinceTextFeild.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
    }
    
    func creataClickButton(){
        popBody.addSubview(clickButton)
        clickButton.mt_innerAlign(left: 90, top: nil, right: 90, bottom: 16)
        clickButton.backgroundColor = UIColor.mainColor()
        clickButton.setTitle("Click", forState: .Normal)
        clickButton.roundBorder()
        clickButton.setHeight(50)
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
        tbv.mt_innerAlign(left: 0, top: nil, right: 0, bottom: 0)
        tbv.mt_innerAlign(left: nil, top: (0, menu), right: nil, bottom: nil)
        self.tbv.backgroundColor = UIColor.headerColor()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
            titleCell.detailLabel.text = data[indexPath.row].title
            titleCell.detailLabel.tintColor = UIColor.redColor()
        case .Income:
            let incomeCell = cell as! IncomeCell
            incomeCell.textDetailLabel.text = "Income"
            incomeCell.textContentLabel.text = data[indexPath.row].income
        case .Address:
            let addressCell = cell as! TextCell
            addressCell.textDetailLabel.text = "Address"
            addressCell.textContentLabel.text = data[indexPath.row].address
        case .Description:
            let descriptionCell = cell as! TextCell
            descriptionCell.textDetailLabel.text = "Description"
            descriptionCell.textContentLabel.text = data[indexPath.row].description
        case .Jobtype:
            let jobCell = cell as! TextCell
            jobCell.textDetailLabel.text = "Job"
            jobCell.textContentLabel.text = "this is my Job"
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
    
    func setupDetailLabel(){
        
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