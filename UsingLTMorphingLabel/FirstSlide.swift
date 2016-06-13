//
//  ViewController.swift
//  UsingLTMorphingLabel
//
//  Created by alden lamp on 6/8/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit
import LTMorphingLabel

public var slideForThemesAndSymbols = 0
public var isTheme = false

class FirstSlide : UIViewController {
    
    
    let font = UIFont(name: "avenir", size: 21)
    let color = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.00)
    var distance = 35
    
    @IBOutlet weak var bottonView: UIView!
    @IBOutlet weak var option1: UIButton!
    
    @IBOutlet weak var option2: UIButton!
    
    
    
    var instructionLabels = [UILabel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...10{
            
            self.bottonView.alpha = 0.0
            
            let distance = 5 + (27 * (Double(i) - 0.8))
            let rect = CGRectMake(5, CGFloat(distance), self.view.frame.width - 10, 100)
            let label = UILabel(frame: rect)
            label.textColor = color
            label.textAlignment = .Center
            label.alpha = 1.0
            label.font = font
            switch i {
            case 0:
                label.text = "Scene 1"
            case 1:
                label.text = "You wake up with light near the door"
            case 2:
                label.text = "and darkness on the other side of"
            case 3:
                label.text = "your house. As you go through the"
            case 4:
                label.text = "normal morning routine you your"
            case 5:
                label.text = "wife, Juana, sees a scorpion near"
            case 6:
                label.text = "Coyotito, your baby. In an attempt"
            case 7:
                label.text = "to save the baby, Coyotito gets stung."
            case 8:
                label.text = "Juana tries sucking blood out of him"
            case 9:
                label.text = "You are left with two options."
            case 10:
                label.text = ""
                
            default:
                break
            }
            label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
            instructionLabels.append(label)
            delay(Double(i) * 1.0 + 1.0, closure: {
                self.view.addSubview(label)
                label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: true)
            })
        }
        
        delay(12.0) {
            
            UIView.animateWithDuration(2,
                                       delay: 0,
                                       options: UIViewAnimationOptions.CurveLinear,
                                       animations: {
                                        self.bottonView.alpha = 1
                }, completion: nil)
            
            self.option1.setTitle("go to the doctor for help", forState: .Normal)
            self.option2.setTitle("rely on Juana to cure him", forState: .Normal)
        }
        
        
        
        
    }
    
    var scene = 0
    
    @IBAction func option1(sender: UIButton) {
        switch instructionLabels[0].text!{
        case "Scene 1": scene = 1
        case "Scene 2": scene = 2
        case "Scene 3": scene = 3
        case "Scene 4": scene = 4
        case "Scene 5": scene = 5
        case "Scene 6": scene = 6
        case "Scene 7": scene = 7
        default: break
        }
        
        actionPressed()
        if scene == 1{
            for i in 0...10{
                
                let distance = 5 + (27 * (Double(i) - 0.8))
                let rect = CGRectMake(5, CGFloat(distance), self.view.frame.width - 10, 100)
                let label = UILabel(frame: rect)
                label.textColor = color
                label.textAlignment = .Center
                label.alpha = 1.0
                label.font = font
                switch i {
                case 0:
                    label.text = "Scene 2"
                case 1:
                    label.text = "Because you are a different race"
                case 2:
                    label.text = "then the doctor, he rejects you. You"
                case 3:
                    label.text = "decide to go pearl hunting to try to"
                case 4:
                    label.text = "find a pearl great enough to get the"
                case 5:
                    label.text = "Doctor’s help. You find the Pearl"
                case 6:
                    label.text = "of the World. The Doctor decides"
                case 7:
                    label.text = "to help you and apologies for."
                case 8:
                    label.text = ""
                case 9:
                    label.text = "What do you do?"
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 1.0 + 1.0, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: true)
                })
                delay(12, closure: {
                    self.option1.setTitle("Let him help your baby", forState: .Normal)
                    self.option2.setTitle("Reject him and rely on Juana", forState: .Normal)
                })
                
                
            }
        }
        
        
        
    }
    
    @IBAction func option2(sender: UIButton) {
        switch instructionLabels[0].text!{
        case "Scene 1": scene = 1
        case "Scene 2": scene = 2
        case "Scene 3": scene = 3
        case "Scene 4": scene = 4
        case "Scene 5": scene = 5
        case "Scene 6": scene = 6
        case "Scene 7": scene = 7
        default: break
        }
        
        actionPressed()
        
        
        
        
    }
    
    
    func actionPressed(){
        
        for i in 0...10 {
            instructionLabels[i].text = ""
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController
        
        if let symbolOrTheme = destination as? ThemeController{
            
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







