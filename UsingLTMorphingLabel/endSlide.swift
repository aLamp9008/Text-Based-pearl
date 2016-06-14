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
    
    let font = UIFont(name: "avenir", size: 19)
    let color = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.00)
    var instructionLabels = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if scene == 0 {
            
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
            
        }
        
        
        if scene == 1 {
            
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
                    label.text = "Scene 2"
                case 1:
                    label.text = "Juana does not have any medicine."
                case 2:
                    label.text = "Coyotito gets sicker and sicker and it"
                case 3:
                    label.text = "is minutes before he dies. You and"
                case 4:
                    label.text = "Juana suffer the rest of your life"
                case 5:
                    label.text = "because you have failed to raise your"
                case 6:
                    label.text = "child."
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
            
        }
        if scene == 2 {
            
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
                    label.text = "Scene 3"
                case 1:
                    label.text = "You are caught by your neighbor"
                case 2:
                    label.text = "and are kicked out of town. You"
                case 3:
                    label.text = "now have nowhere to live and"
                case 4:
                    label.text = "Go broke and homeless."
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
            
        }
        if scene == 3 {
            
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
                    label.text = "Scene 4"
                case 1:
                    label.text = "Your ambition results in Juana"
                case 2:
                    label.text = "dropping the great pearl back into"
                case 3:
                    label.text = "the sea. You rage at her. She is tired"
                case 4:
                    label.text = "of you arguing and decides to"
                case 5:
                    label.text = "abandon you. You are left"
                case 6:
                    label.text = "forever alone."
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
            
        }
        if scene == 5 {
            
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
                    label.text = "Scene 6"
                case 1:
                    label.text = "The sneaky doctor bribes the priest"
                case 2:
                    label.text = "to give you a poison disguised as a"
                case 3:
                    label.text = "drink to celebrate your finding."
                case 4:
                    label.text = "You drink it and are poisoned to death."
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
            
        }
        if scene == 7 {
            
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
                    label.text = "Scene 8"
                case 1:
                    label.text = "Your neighborhood gets mad at you"
                case 2:
                    label.text = "for throwing the pearl away and"
                case 3:
                    label.text = "ambush you and your family."
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
            
        }
        if scene == 8 {
            
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
                    label.text = "Scene 9"
                case 1:
                    label.text = "You try to use the money to proceed"
                case 2:
                    label.text = "with your ambitions. You buy everything"
                case 3:
                    label.text = "you want and it is only a matter of time"
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
            
        }
        if scene == 9 {
            
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
                    label.text = "Scene 10"
                case 1:
                    label.text = "Your entire future is destroyed and"
                case 2:
                    label.text = "you are left with the poor, miserable"
                case 3:
                    label.text = "life you have now— because you do"
                case 4:
                    label.text = "not have the pearl to sell anymore."
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
            
        }
        if scene == 10 {
            
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
                    label.text = "Scene 11"
                case 1:
                    label.text = "You stumble over a rock and fall to"
                case 2:
                    label.text = "The ground. The robbers catch up"
                case 3:
                    label.text = "to you, take the pearl away, and"
                case 4:
                    label.text = "leave you stranded."
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
            
        }
        if scene == 12 {
            
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
                    label.text = "Scene 13"
                case 1:
                    label.text = "Your neighborhood gets mad at you"
                case 2:
                    label.text = "for throwing the pearl away. They"
                case 3:
                    label.text = "decide to ambush you and your family."
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
            
        }
        if scene == 13 {
            
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
                    label.text = "Scene 14"
                case 1:
                    label.text = "It is too bright out, and trackers easily"
                case 2:
                    label.text = "hunt you down before you are able to"
                case 3:
                    label.text = "escape. They steal the pearl and"
                case 4:
                    label.text = "escape. They steal the pearl and"
                case 5:
                    label.text = "demolish your entire family."
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
            
        }
        if scene == 14 {
            
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
                    label.text = "Scene 15"
                case 1:
                    label.text = "You manage to take out one of the"
                case 2:
                    label.text = "trackers, but three is too much to"
                case 3:
                    label.text = "handle. You are forced to surrender"
                case 4:
                    label.text = "and give up everything you have."
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
            
        }
        if scene == 15 {
            
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
                    label.text = "Scene 16"
                case 1:
                    label.text = "When the trackers go looking for a"
                case 2:
                    label.text = "water source, they find the stream"
                case 3:
                    label.text = "you are at and notice you. They catch"
                case 4:
                    label.text = "up to you, capture your family, and"
                case 5:
                    label.text = "force you to give up everything"
                case 6:
                    label.text = "you have."
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
            
        }
        if scene == 16 {
            
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
                    label.text = "Scene 17"
                case 1:
                    label.text = "While you are hiding, the trackers"
                case 2:
                    label.text = "spot you and ambush you"
                case 3:
                    label.text = "when you are asleep."
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
        }
        
    
    
    
    
    
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    
    
    
    
    }
    
    @IBAction func symbolism(sender: AnyObject) {
        
        isdead = true
        
    }
    
    @IBAction func themes(sender: AnyObject) {
        
        isdead = true
        
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

    

