//
//  TextCell.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/8/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {
    
    var viewText = UIView()

    var textDetailLabel = UILabel()
    
    var textContentLabel = UILabel()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(viewText)
        layoutBodyCell()
    
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func layoutBodyCell() {
        viewText.addSubview(textDetailLabel)
        viewText.addSubview(textContentLabel)
        viewText.mt_innerAlign(left: 8, top: 0, right: 8, bottom: 0)
        textDetailLabel.mt_innerAlign(left: (8, viewText), top: (16, viewText), right: nil, bottom: nil)
        textDetailLabel.setHeight(20)
        
        textContentLabel.mt_innerAlign(left: nil, top: (16, viewText), right: (8,viewText), bottom: nil)
        textContentLabel.setHeight(20)
        
    }
    
    
    override func prepareForReuse() {
        
        textContentLabel.textColor = UIColor.blackColor()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
