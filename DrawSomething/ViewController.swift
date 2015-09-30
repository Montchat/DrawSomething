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
        let circleView = BlueCircle(frame: CGRect(x: view.center.x, y: view.center.y, width: 100, height: 100))
        
        let redSquareView = RedSquareWithBorders(frame: CGRect(x: view.center.x, y: view.center.y - 200, width: 100, height: 100))
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        view.addSubview(circleView)
        view.addSubview(redSquareView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches as? Set<UITouch> {
            let triangleCenter = touch.first!.locationInView(view)
            let triangleWidth = CGFloat(25 + (arc4random() % 50))
            let triangleHeight = triangleWidth
            
            let triangleView = GreenTriangle(frame: CGRect(x:triangleCenter.x, y: triangleCenter.y, width: triangleWidth, height: triangleHeight))
            
            view.addSubview(triangleView)
            
        }
        
        
    }


}

