//
//  SexViewController.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/2/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class SexViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var SexLabelthr: [String] = {
        var result = [String]()
        result += ["Male"]
        result += ["Female"]
        
        return result
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        
        self.navigationItem.title = "Choise Female or Male"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       return SexLabelthr.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cellthr", forIndexPath: indexPath) as! SexTableViewCell
        cell.SexLabel.text = SexLabelthr[indexPath.row]
        
        
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        cell.contentView.backgroundColor = UIColor.clearColor()
        cell.SexLabel.roundBorder()
        cell.SexLabel.layer.borderColor = UIColor.borderColor().CGColor
        cell.SexLabel.layer.borderWidth = 1
        cell.SexLabel.clipsToBounds = true
        
        
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
