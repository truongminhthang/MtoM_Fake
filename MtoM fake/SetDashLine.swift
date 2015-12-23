//
//  SetDashLine.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/10/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class DashLine: UIView {
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 0, y: self.frame.height - 2))
        path.addLineToPoint(CGPoint(x: self.frame.width, y: self.frame.height - 2))
        path.lineWidth = 1
        
        let color = UIColor.colorFormHext(0xDADADA, alpha: 1)
        let dash : [CGFloat] = [1,1]
        path.setLineDash(dash, count: 2, phase: 0)
        color.setStroke()
        path.stroke()
    }
}