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
    
    private var selectedButtonTitle = NSMutableAttributedString()
    private var normalButtonTitle = NSMutableAttributedString()
    private var mutableSubTitle = NSMutableAttributedString()
    
    var otherButtons = [MenuButton]()
    let imageArrow = UIImageView(image: UIImage(named: "ic_arrow_down"))
    
    var informationVC : InformationVC?
    var popView : PopView?
    weak var menuBt : Menu!
    
    
    
    convenience init(informationVC:InformationVC) {
        self.init()
        self.informationVC = informationVC
    }
    
    convenience init(menuBt: Menu) {
        self.init()
        self.menuBt = menuBt
        
    }
    
    var title : String = "" {
        didSet {
            if title != "" {
                let dictAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19), NSForegroundColorAttributeName: UIColor.redColor()]
                selectedButtonTitle = NSMutableAttributedString(string: title, attributes: dictAttribute)
                if title != oldValue {
                    self.setAttributedTitle(selectedButtonTitle, forState: .Selected)
                }
            }
            setNormalButtonTitle()
        }
    }
    
    var subTitle : String = "" {
        didSet {
            if subTitle != "" {
                let dictAttribute = [NSFontAttributeName: UIFont.systemFontOfSize(16), NSForegroundColorAttributeName: UIColor.whiteColor()]
                mutableSubTitle = NSMutableAttributedString(string: "\n" + subTitle, attributes: dictAttribute)
            }
            setNormalButtonTitle()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMenuButton()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupMenuButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupMenuButton() {
        selected = false
        setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
        setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        titleLabel?.numberOfLines = 2
        titleLabel?.textAlignment = .Center
        self.roundBorder()
    }
    
    func setNormalButtonTitle() {
        if subTitle == "" || title == "" {
            return
        }
        let dictAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(19), NSForegroundColorAttributeName: UIColor.whiteColor()]
        normalButtonTitle = NSMutableAttributedString(string: title, attributes: dictAttribute)
        normalButtonTitle.appendAttributedString(mutableSubTitle)
        self.setAttributedTitle(normalButtonTitle, forState: .Normal)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if selected {
            backgroundColor = UIColor.whiteColor()
            menuBt.showPopView(self)
        } else {
            backgroundColor = UIColor.clearColor()
            menuBt.hidePopViewIfNeed()
        }
        
        layoutArrowDown()
    }
    
    func layoutArrowDown() {
        print(selected)
        if !selected {
            self.addSubview(imageArrow)
            imageArrow.mt_InnerAlign(PinPosition.LowCenter, space: 5, size: CGSize(width: 15, height: 15))
        } else {
            imageArrow.removeFromSuperview()
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        resetOtherButton()
        selected = !selected
    }
    func resetOtherButton() {
        for item in otherButtons {
            if item.selected == true {
                if item != self {
                    item.selected = false
                }
                
            }
        }
    }
    
}
