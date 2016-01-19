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
    var dashLine = DashLine()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(viewText)
        layoutBodyCell()
        contentView.backgroundColor = UIColor.headerColor()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func layoutBodyCell() {
        viewText.mt_innerAlign(left: 8, top: 0, right: 8, bottom: 0)
        viewText.backgroundColor = UIColor.whiteColor()
        viewText.addSubview(textContentLabel)
        viewText.addSubview(textDetailLabel)
        
        setupTextContentLabel()
        setupTextDetailLabel()
        setupDashLine()
    }
    
    
    func setupTextContentLabel(){
        textContentLabel.tintColor = UIColor.blackColor()
        textContentLabel.mt_innerAlign(left: nil, top: 8, right: 8, bottom: 8)
        textContentLabel.mt_innerAlign(left: (16, textDetailLabel), top: nil, right: nil, bottom: nil)
        textContentLabel.font = UIFont.systemFontOfSize(13)
    }
    
    func setupTextDetailLabel(){
        textDetailLabel.tintColor = UIColor.blackColor()
        textDetailLabel.mt_innerAlign(left: 8, top: 8, right: nil, bottom: 8)
        textDetailLabel.font = UIFont.systemFontOfSize(13)
        textDetailLabel.mt_setWidth(70)
    }
    
    func setupDashLine(){
        viewText.addSubview(dashLine)
        dashLine.mt_innerAlign(left: 0, top: 0 ,right: 0, bottom: 0)
        dashLine.backgroundColor = UIColor.clearColor()
    }
    
    override func prepareForReuse() {
        textContentLabel.textColor = UIColor.blackColor()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
