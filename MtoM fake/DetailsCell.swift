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
    var searchImageView = UIImageView()
    var searchImage = UIImage(named: "ic_search")
    var detailButton = UIButton(type: UIButtonType.System)
    
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
        detailButton.mt_innerAlign(left: 8, top: 4, right: 8, bottom: 4)
        setupDetailButton()
        setupSearchView()
    }
    
    func setupDetailButton(){
        detailButton.roundBorder()
        detailButton.layer.borderColor = UIColor.borderColor().CGColor
        detailButton.layer.borderWidth = 1
        detailButton.clipsToBounds = true
        detailButton.backgroundColor = UIColor.whiteColor()
        detailButton.setTitleColor(UIColor.mainColor(), forState: .Normal)
    }
    
    func setupSearchView(){
        detailButton.addSubview(searchImageView)
        searchImageView.image = UIImage(named: "ic_search")
        searchImageView.mt_innerAlign(left: nil, top: 6, right: nil  , bottom: 6)
        searchImageView.mt_innerAlign(left: nil, top: nil, right: (2, detailButton.titleLabel), bottom: nil)
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
