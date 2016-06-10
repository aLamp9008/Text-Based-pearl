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







