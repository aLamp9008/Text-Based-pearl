//
//  ViewController.swift
//  UsingLTMorphingLabel
//
//  Created by alden lamp on 6/8/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit
import LTMorphingLabel

class ViewController : UIViewController {
    
    var aldenIsStupeedLabel = LTMorphingLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aldenIsStupeedLabel = LTMorphingLabel(frame: CGRectMake(0,40,self.view.frame.width, 100))
        aldenIsStupeedLabel.font = UIFont(name: "Avenir", size: 30)
        aldenIsStupeedLabel.text = "Alden is fat"
        aldenIsStupeedLabel.textAlignment = .Center
        aldenIsStupeedLabel.morphingEffect = .Fall
        aldenIsStupeedLabel.morphingDuration = 2.0
        self.view.addSubview(aldenIsStupeedLabel)
        delay(3.0) { 
            self.aldenIsStupeedLabel.text = "And Alden is stuepeed"
        }
        
        delay(6.0) { 
            self.aldenIsStupeedLabel.text = "And he is slow and fat"
        }
        
    }
    
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    
}


    





