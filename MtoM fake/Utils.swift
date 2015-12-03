//
//  UIColorExtension.swift
//  MtoM fake
//
//  Created by Trương Thắng on 11/30/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

extension UIColor{
    static func mainColor() -> UIColor {
        return UIColor.colorFormHext(0xBD2810)
    }
    static func headerColor() -> UIColor {
        return UIColor.colorFormHext(0xFFF1D2)
    }
    
    static func borderColor() -> UIColor {
        return UIColor.colorFormHext(0xC9BDA6)
    }
    
    static func clickColor() -> UIColor {
        return UIColor.colorFormHext(0xFE9FA2)
    }
    static func colorFormHext(hex: UInt32) -> UIColor{
        let div = CGFloat (255)
        let red = CGFloat ((hex & 0xFF0000) >> 16) / div
        let green = CGFloat((hex & 0x00FF00) >> 8) / div
        let blue  = CGFloat(hex & 0x0000FF)  / div
        return UIColor(red: red, green: green, blue: blue, alpha:  1)
    }
    
}

extension UIView {
    func roundBorder(radius: CGFloat = 5){
        self.layer.cornerRadius = radius
    }
}
