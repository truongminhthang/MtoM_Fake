//
//  DetailsCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {
    var detailView = UIView()
    var detailButton = UIButton()

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(detailView)
        LayoutOfDetailsCell()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func LayoutOfDetailsCell() {
        detailView.mt_innerAlign(left: 8, top: 0, right: 8, bottom: 0)
        detailView.backgroundColor = UIColor.whiteColor()
        detailView.addSubview(detailButton)
        
        detailButton.mt_innerAlign(left: 16, top: 8, right: 16, bottom: 8)
        detailButton.roundBorder()
        detailButton.layer.borderColor = UIColor.borderColor().CGColor
        detailButton.layer.borderWidth = 1
        detailButton.clipsToBounds = true
        detailButton.backgroundColor = UIColor.whiteColor()
        
        detailButton.tintColor = UIColor.redColor()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
