//
//  endSlide.swift
//  Kino's Adventure
//
//  Created by alden lamp on 6/13/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit

public var isdead = false

class endSlide: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
/*
        for i in 0...7{
            
            
            let distance = 5 + (27 * (Double(i) - 0.8))
            let rect = CGRectMake(5, CGFloat(distance), self.view.frame.width - 10, 100)
            let label = UILabel(frame: rect)
            label.textColor = color
            label.textAlignment = .Center
            label.alpha = 1.0
            label.font = font
            switch i {
            case 0:
                label.text = "Scene "
            case 1:
                label.text = ""
            case 2:
                label.text = ""
            case 3:
                label.text = ""
            case 4:
                label.text = ""
            case 5:
                label.text = ""
            case 6:
                label.text = ""
            case 7:
                label.text = ""
            default:
                break
            }
            
            instructionLabels.append(label)
            delay(Double(i) * 0.5 + 0.5, closure: {
                self.view.addSubview(label)
                label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
            })
 
        }
        */
        
    }
    @IBAction func symbolism(sender: AnyObject) {
        
        isdead = true
        
    }

    @IBAction func themes(sender: AnyObject) {
        
       isdead = true
        
    }


}
