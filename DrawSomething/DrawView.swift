//
//  DrawView.swift
//  DrawSomething
//
//  Created by Joe E. on 9/30/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        
    }
    
    required init(coder aDecorer: NSCoder) {
        fatalError("init(coder: has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        var blueColor = UIColor.blueColor().CGColor
        var whiteColor = UIColor.whiteColor().CGColor
        
        CGContextSetLineWidth(context, 5)
        CGContextSetFillColorWithColor(context,blueColor)
        CGContextSetStrokeColorWithColor(context, whiteColor)
        
        UIColor.blueColor().set()
        
        CGContextAddArc(context, frame.size.width / 2, frame.size.height / 2, (frame.size.width - 10) / 2, 0, CGFloat(M_PI * 2.0), 1)
        
        CGContextStrokePath(context)
        
    }

}
