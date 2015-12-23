//
//  TitleCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class TitleCell: UITableViewCell {

    @IBOutlet weak var viewBorder: UIView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var detailLabel: UILabel!
    var job = Job() {
        didSet {
            detailLabel.text = job.title
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewBorder.roundBorder()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
