//
//  HomeViewController.swift
//  MtoM fake
//
//  Created by Trương Thắng on 11/30/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class LivingPlaceViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var label: [String] = {
        var result = [String]()
        result += ["Thai Binh"]
        result += ["Ha Noi"]
        result += ["TP HCM"]
        result += ["Ca Mau"]
        result += ["Hai Phong"]
        result += ["Hai Duong"]
        result += ["Nam Dinh"]
        result += ["Ninh Binh"]
        result += ["Ha Noi2"]
        result += ["Son La"]
        result += ["Da Nang"]
        return result
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.edgesForExtendedLayout = UIRectEdge.None
        self.navigationController?.navigationBarHidden = false
        
        
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "ic_action_bar_indicator")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "ic_action_bar_indicator")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
//        if self.navigationItem.backBarButtonItem == nil {
//            let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_action_bar_indicator"), style: UIBarButtonItemStyle.Plain, target: self, action: Selector("backAction"))
//            leftBarButtonItem.title = ""
//            self.navigationItem.backBarButtonItem = leftBarButtonItem
//        }
//        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return label.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! LivingPlaceTableViewCell
        
        cell.tenLabel.text = label[indexPath.row]
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        cell.contentView.backgroundColor = UIColor.clearColor()
        cell.tenLabel.roundBorder()
        cell.tenLabel.layer.borderColor = UIColor.borderColor().CGColor
        cell.tenLabel.layer.borderWidth = 1
        cell.tenLabel.clipsToBounds = true
        
        return cell
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
