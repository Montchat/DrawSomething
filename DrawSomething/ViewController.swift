//
//  ViewController.swift
//  DrawSomething
//
//  Created by Joe E. on 9/30/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches as? Set<UITouch> {
            let circleCenter = touch.first!.locationInView(view)
            let circleWidth = CGFloat(25 + (arc4random() % 50))
            let circleHeight = circleWidth
            
            let circleView = DrawView(frame: CGRect(x: circleCenter.x, y: circleCenter.y, width: circleWidth, height: circleHeight))
            
            view.addSubview(circleView)
            
        }
        
        
    }


}

