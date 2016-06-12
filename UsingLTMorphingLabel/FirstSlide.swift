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
    func makeLabel(whichLabel: Int) -> UILabel{
        let distance = 5 + (30 * (Double(whichLabel) - 0.8))
        let rect = CGRectMake(5, CGFloat(distance), self.view.frame.width - 10, 100)
        let label = UILabel(frame: rect)
        label.textColor = color
        label.textAlignment = .Center
        label.alpha = 1.0
        label.font = font
        switch whichLabel {
        case 0:
            label.text = "You wake up with light near the door"
        case 1:
            label.text = "and darkness on the other side of"
        case 2:
            label.text = "your house. As you go through the"
        case 3:
            label.text = "normal morning routine, your"
        case 4:
            label.text = "wife, Juana, sees a scorpion near"
        case 5:
            label.text = "Coyotito, your baby. In an attempt"
        case 6:
            label.text = "to save the baby, Coyotito gets stung."
        case 8:
            label.text = "You are left with two options."
        default:
            break
        }
        label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
        return label
    }
    
    @IBOutlet weak var option1: UIButton!
    
    @IBOutlet weak var option2: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(view.subviews)
        let label0 = makeLabel(0)
        let label1 = makeLabel(1)
        let label2 = makeLabel(2)
        let label3 = makeLabel(3)
        let label4 = makeLabel(4)
        let label5 = makeLabel(5)
        let label6 = makeLabel(6)
        let label7 = makeLabel(8)
        
        delay(1.0){
            self.view.addSubview(label0)
            label0.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
            self.delay(1.0, closure: {
                self.view.addSubview(label1)
                label1.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
                self.delay(1.0, closure: {
                    self.view.addSubview(label2)
                    label2.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
                    self.delay(1.0, closure: {
                        self.view.addSubview(label3)
                        label3.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
                        self.delay(1.0, closure: {
                            self.view.addSubview(label4)
                            label4.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
                            self.delay(1.0, closure: {
                                self.view.addSubview(label5)
                                label5.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
                                self.delay(1.0, closure: {
                                    self.view.addSubview(label6)
                                    label6.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
                                    self.delay(1.0, closure: {
                                        self.view.addSubview(label7)
                                        label7.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 1, fadeToLabel: false)
                                        self.delay(1.0, closure: {
                                            self.option1.setTitle("go to the doctor for help", forState: .Normal)
                                            self.option2.setTitle("rely on Juana to cure him", forState: .Normal)
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })








            

            
        }
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController
        if let slide2 = destination as? SecondSlide{
            
            
            
        }
        if let symbolOrTheme = destination as? ThemesAndSymbols{
            
            slideForThemesAndSymbols = 1
            if sender!.currentTitle == "Symbolism"{
                isTheme = false
                
            }
            if sender!.currentTitle == "Themes"{
             
                isTheme = true
                
            }
            
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







