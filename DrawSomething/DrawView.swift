//
//  DrawView.swift
//  DrawSomething
//
//  Created by Joe E. on 9/30/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

let context = UIGraphicsGetCurrentContext()

class BlueCircle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder: has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        let blueColor = UIColor.blueColor().CGColor
        let width = CGRectGetWidth(rect)
        
        CGContextSetLineWidth(context, 5)
        CGContextSetFillColorWithColor(context,blueColor)
        
        UIColor.blueColor().set()
        
        CGContextAddArc(context, frame.size.width / 2, frame.size.height / 2, (frame.size.width - 10) / 2, 0, CGFloat(M_PI * 2.0), 1)
        
        CGContextStrokePath(context)
        
    }

}

class RedSquareWithBorders: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        
    }
    
    required init(coder aDecoder:NSCoder) {
        fatalError("init(coder: has not been implemented")
        
    }
    
    override func drawRect(rect: CGRect) {
        let redColor = UIColor.redColor().CGColor
        let blackColor = UIColor.blueColor().CGColor
        CGContextSetFillColorWithColor(context, redColor)
        CGContextFillRect(context, rect)
        CGContextStrokeRect(context, rect)
        CGContextStrokeRectWithWidth(context, rect, 10)
        
    }

}

class GreenTriangle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder: has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        let greenColor = UIColor.greenColor().CGColor
        let triangleWidth = CGRectGetWidth(rect)
        
        CGContextSetFillColorWithColor(context,greenColor)
        UIColor.greenColor().CGColor
        
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect))
        CGContextMoveToPoint(context, CGRectGetMaxX(rect), CGRectGetMidY(rect))
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect))
        CGContextClosePath(context)
        
//        CGContextStrokePath(context)
        
    }
    
}
