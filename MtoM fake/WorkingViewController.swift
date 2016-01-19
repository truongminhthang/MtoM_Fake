//
//  TwoViewController.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/1/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class WorkingViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    var TwoLabel: [String] = {
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
//        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "ic_action_bar_indicator")
//        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "ic_action_bar_indicator")
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.title = "Want Working Place"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return TwoLabel.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Celltwo", forIndexPath: indexPath) as! WorkingTableViewCell
        cell.TwoNamelabel.text = TwoLabel[indexPath.row]
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        cell.contentView.backgroundColor = UIColor.clearColor()
        cell.TwoNamelabel.roundBorder()
        cell.TwoNamelabel.layer.borderColor = UIColor.borderColor().CGColor
        cell.TwoNamelabel.layer.borderWidth = 1
        cell.TwoNamelabel.clipsToBounds = true
        
        
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
