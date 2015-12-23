//
//  MenuButton.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/23/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class MenuButton: UIButton {
    
    

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var otherButtons = [MenuButton]()
    let imageArrow = UIImageView(image: UIImage(named: "ic_arrow_down"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMenuButton()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupMenuButton()
    }
    
    func setupMenuButton() {
        selected = false
        setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
        setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        titleLabel?.numberOfLines = 2
        titleLabel?.textAlignment = .Center
        
        self.roundBorder()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if selected {
            backgroundColor = UIColor.whiteColor()

        } else {
            backgroundColor = UIColor.clearColor()
        }
        layoutArrowDown()
    }
    
    func layoutArrowDown() {
        self.addSubview(imageArrow)
        imageArrow.mt_InnerAlign(PinPosition.LowCenter, space: 5, size: CGSize(width: 15, height: 15))
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        resetOtherButton()
        selected = !selected
        
    }
    
    func resetOtherButton() {
        for item in otherButtons {
            if item.selected == true {
                item.selected = false
            }
        }
    }

}
