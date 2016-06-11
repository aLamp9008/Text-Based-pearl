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
    
    let font = UIFont(name: "Avenir", size: 21)
    let color = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.00)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let welcomeLabel = LTMorphingLabel(frame: CGRectMake(0,45, self.view.frame.width, 100))
        
        let kinoAdven = LTMorphingLabel(frame: CGRectMake(0, 10, self.view.frame.width, 100))
        kinoAdven.font = UIFont(name: "Avenir", size: 30)
        kinoAdven.morphingEffect = .Fall
        kinoAdven.text = "Kino's Adventure"
        kinoAdven.textAlignment = .Center
        kinoAdven.textColor = color
        kinoAdven.alpha = 1.0
        self.view.addSubview(kinoAdven)
        kinoAdven.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: true)
        delay(1.7) {
            
            welcomeLabel.font = UIFont(name: "Avenir", size: 25)
            welcomeLabel.text = "Welome to pearl text based app"
            welcomeLabel.alpha = 1.0
            welcomeLabel.morphingEffect = .Fall
            welcomeLabel.morphingDuration = 2.0
            welcomeLabel.textAlignment = .Center
            welcomeLabel.alpha = 1.0
            welcomeLabel.textColor = self.color
            self.view.addSubview(welcomeLabel)
        }
        
        delay(4.0){
            welcomeLabel.text = "Want to play a game?"
        }
        delay(6.0) {
            
            
            
            let instructionLabel = UILabel(frame: CGRectMake(0, 95, self.view.frame.width, 100))
            instructionLabel.textAlignment = .Center
            instructionLabel.text = "You are in Kino’s shoes and are"
            instructionLabel.alpha = 1.0
            instructionLabel.textColor = self.color
            instructionLabel.font = self.font
            self.view.addSubview(instructionLabel)
            instructionLabel.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
        }
        delay(7.0) {
            let instructionLabel2 = UILabel(frame: CGRectMake(0, 130, self.view.frame.width, 100))
            instructionLabel2.textAlignment = .Center
            instructionLabel2.text = "following his path through Steinbeck’s"
            instructionLabel2.alpha = 1.0
            instructionLabel2.textColor = self.color
            instructionLabel2.font = self.font
            self.view.addSubview(instructionLabel2)
            instructionLabel2.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
        }
        delay(8) {
            let instructionLabel3 = UILabel(frame: CGRectMake(0, 165, self.view.frame.width, 100))
            instructionLabel3.textAlignment = .Center
            instructionLabel3.text = "The Pearl"
            instructionLabel3.alpha = 1.0
            instructionLabel3.textColor = self.color
            instructionLabel3.font = self.font
            instructionLabel3
            self.view.addSubview(instructionLabel3)
            instructionLabel3.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
        }
        delay(9) {
            let instructionLabel4 = UILabel(frame: CGRectMake(0, 200, self.view.frame.width, 100))
            instructionLabel4.textAlignment = .Center
            instructionLabel4.text = "Please try to follow his path."
            instructionLabel4.alpha = 1.0
            instructionLabel4.textColor = self.color
            instructionLabel4.font = self.font
            self.view.addSubview(instructionLabel4)
            instructionLabel4.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
        }
        delay(10) {
            let instructionLabel5 = UILabel(frame: CGRectMake(0, 275, self.view.frame.width, 100))
            instructionLabel5.textAlignment = .Center
            instructionLabel5.text = "To see themes and symbols"
            instructionLabel5.alpha = 1.0
            instructionLabel5.textColor = self.color
            instructionLabel5.font = self.font
            self.view.addSubview(instructionLabel5)
            instructionLabel5.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
        }
        delay(11) {
            let instructionLabel6 = UILabel(frame: CGRectMake(0, 310, self.view.frame.width, 100))
            instructionLabel6.textAlignment = .Center
            instructionLabel6.text = "tap the respective button."
            instructionLabel6.alpha = 1.0
            instructionLabel6.textColor = self.color
            instructionLabel6.font = self.font
            self.view.addSubview(instructionLabel6)
            instructionLabel6.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
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
    
    
    
}
