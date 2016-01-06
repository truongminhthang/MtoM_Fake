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
        
        detailView.addSubview(detailButton)
        
        detailButton.mt_splitHorizontallyByViews([detailView], edge: UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16), gap: 1)
        
        
        detailButton.roundBorder()
        detailButton.layer.borderColor = UIColor.borderColor().CGColor
        detailButton.layer.borderWidth = 1
        detailButton.clipsToBounds = true
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
