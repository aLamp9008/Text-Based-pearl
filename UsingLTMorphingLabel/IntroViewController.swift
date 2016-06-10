//
//  IntroViewController.swift
//  UsingLTMorphingLabel
//
//  Created by alden lamp on 6/10/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit
import LTMorphingLabel

class IntroViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var buttonOut: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var welcomeLabel = LTMorphingLabel(frame: CGRectMake(0,40,self.view.frame.width, 100))
        welcomeLabel.font = UIFont(name: "Avenir", size: 25)
        welcomeLabel.text = "Welome to pearl text based app"
        welcomeLabel.alpha = 1.0
        welcomeLabel.morphingEffect = .Fall
        welcomeLabel.morphingDuration = 2.0
        welcomeLabel.textAlignment = .Center
        welcomeLabel.alpha = 1.0
        welcomeLabel.textColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.00)
        self.view.addSubview(welcomeLabel)
        delay(3.0){
            welcomeLabel.text = "want to play a game"
        }
        delay(3.0) {
        }
    }
    @IBAction func startButton(sender: AnyObject) {
    }
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    /*
    // MARK: - Navigation

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
