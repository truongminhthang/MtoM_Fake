//
//  TitleCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class TitleCell: UITableViewCell {
    var detailLabel = UILabel()
    var headerOfCell = UIView()
    var backgroundOfCell = UIView()
    
    var job = Job() {
        didSet {
            detailLabel.text = job.title
        }
        
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(headerOfCell)
        self.addSubview(backgroundOfCell)
        
        layoutHeaderCell()
        layoutBodyCell()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func layoutHeaderCell() {
        
        // layout headerCell
        headerOfCell.mt_innerAlign(left: 8, top: 8, right: 8, bottom: 16)
        headerOfCell.backgroundColor = UIColor.mainColor()
        headerOfCell.roundBorder()
    }
    
    func layoutBodyCell() {
        
        // layout background
        backgroundOfCell.mt_innerAlign(left: 8, top: 13, right: 8, bottom: 0)
        backgroundOfCell.backgroundColor = UIColor.whiteColor()
        
        // layout detailLabel
        backgroundOfCell.addSubview(detailLabel)
        detailLabel.mt_innerAlign(left: 16, top: 8, right: 8, bottom: 8)
        detailLabel.textColor = UIColor.mainColor()
        detailLabel.font = UIFont.boldSystemFontOfSize(16)
        // layout seperateLine
        
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
