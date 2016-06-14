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

public var scene = 0

class FirstSlide : UIViewController {
    
    
    @IBOutlet weak var continueView: UIView!
    
    let font = UIFont(name: "avenir", size: 19)
    let color = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.00)
    var distance = 35
    
    @IBOutlet weak var bottonView: UIView!
    @IBOutlet weak var option1: UIButton!
    
    @IBOutlet weak var option2: UIButton!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        print("ITS GONNAAAA BLOWWWWWWWWW")
    }
    
    
    var instructionLabels = [UILabel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.continueButton.setTitle("Continue", forState: .Normal)
        
        continueView.alpha = 0
        
        if scene == 0{
            
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
                    label.text = "normal morning routine, your wife,"
                case 5:
                    label.text = "Juana, sees a scorpion near"
                case 6:
                    label.text = "Coyotito, your baby. As you try"
                case 7:
                    label.text = "to save Coyotito, he is stung."
                case 8:
                    label.text = ""
                case 9:
                    label.text = "You are left with two options."
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                
                
            }
            
            delay(6.0) {
                
                UIView.animateWithDuration(2,
                                           delay: 0,
                                           options: UIViewAnimationOptions.CurveLinear,
                                           animations: {
                                            self.bottonView.alpha = 1
                    }, completion: nil)
                
                self.option1.setTitle("go to the doctor for help", forState: .Normal)
                self.option2.setTitle("rely on Juana to cure him", forState: .Normal)
            }
        }else{
            
            backFromSymbolOrTheme()
            
        }
    }
    
    
    func backFromSymbolOrTheme(){
        
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
                    label.text = "Because you are of a different race"
                case 2:
                    label.text = "and cannot afford to pay for his"
                case 3:
                    label.text = "superior services, the doctor"
                case 4:
                    label.text = "rejects you."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "What do you do?"
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                    
                }
                
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Steal money to pay the doctor", forState: .Normal)
                    self.option2.setTitle("Help Coyotito in a different way", forState: .Normal)
                })
            }
        }
        
        if scene == 2{
            
            
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
                    label.text = "Scene 3"
                case 1:
                    label.text = "You set off your family canoe"
                case 2:
                    label.text = "to search for pearls, while"
                case 3:
                    label.text = "Juana takes care of Coyotito."
                case 4:
                    label.text = "You find an enormous pearl and"
                case 5:
                    label.text = "howl out crying in happiness."
                case 6:
                    label.text = ""
                case 7:
                    label.text = "You decide to..."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    self.option1.setTitle("Go diving to find more pearls", forState: .Normal)
                    self.option2.setTitle("Bring boats in to examine the pearl", forState: .Normal)
                })
            }
        }

        if scene == 3{
            
            
            
            continueView.alpha = 1
            
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
                    label.text = "Scene 4"
                case 1:
                    label.text = "News about your discovery rapidly"
                case 2:
                    label.text = "spreads around your town. You"
                case 3:
                    label.text = "celebrate with your neighbors,"
                case 4:
                    label.text = "and speak of your ambitions. You"
                case 5:
                    label.text = "hope for a wedding in the church,"
                case 6:
                    label.text = "new clothes, an education for "
                case 7:
                    label.text = "Coyotito, and a rifle."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    
                    
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                    
                    
                    
                })
            }
            
            
        }

        if scene == 4{
            continueView.alpha = 0
            
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
                    label.text = "Scene 5"
                case 1:
                    label.text = "Later that night, the priest visits,"
                case 2:
                    label.text = "Blesses you and reminds you to thank"
                case 3:
                    label.text = "God.  The doctor then arrives and tells"
                case 4:
                    label.text = "you that he was busy in the morning"
                case 5:
                    label.text = "but can now help cure Coyotito."
                case 6:
                    label.text = ""
                case 7:
                    label.text = "You decide to..."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    self.option1.setTitle("Allow the doctor to treat Coyotito", forState: .Normal)
                    self.option2.setTitle("Kick the doctor out of your house", forState: .Normal)
                })
            }
            
        }
        
        if scene == 5{
            
            continueView.alpha = 1

            
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
                    label.text = "Scene 6"
                case 1:
                    label.text = "Within the hour, Coyotito becomes"
                case 2:
                    label.text = "concerningly ill. The doctor returns,"
                case 3:
                    label.text = "giving Coyotito medicine, then asks"
                case 4:
                    label.text = "about payment. You tell him you are"
                case 5:
                    label.text = "planning to sell the pearl you have"
                case 6:
                    label.text = "found. He looks interested, then leaves."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                })
            }
        }

        if scene == 6{
            
            continueView.alpha = 0
            
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
                    label.text = "Scene 7"
                case 1:
                    label.text = "In the middle of the night, you wake up"
                case 2:
                    label.text = "to a thief digging for the pearl."
                case 3:
                    label.text = "You get into a bloody fight and manage"
                case 4:
                    label.text = "to chase the him away. Angrily,"
                case 5:
                    label.text = "Juana suggests that you abandon"
                case 6:
                    label.text = "the pearl."
                case 7:
                    label.text = ""
                case 8:
                    label.text = "You..."
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4.5, closure: {
                    self.option1.setTitle("Reject her idea and keep the pearl", forState: .Normal)
                    self.option2.setTitle("Agree to abandon the pearl", forState: .Normal)
                })
            }
            
            
            
        }
        
        if scene == 7{
            
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
                    label.text = "Scene 8"
                case 1:
                    label.text = "The next morning, you walk into"
                case 2:
                    label.text = "town to sell the pearl. Your brother,"
                case 3:
                    label.text = "Juan Tomás, warns you about rip-off"
                case 4:
                    label.text = "deals. Several dealers approach you and"
                case 5:
                    label.text = "bid low, which they have planned"
                case 6:
                    label.text = "beforehand. One man raises the bid"
                case 7:
                    label.text = "to 1500 pesos."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    self.option1.setTitle("Great deal!", forState: .Normal)
                    self.option2.setTitle("Plan to sell the pearl at the capital", forState: .Normal)
                })
            }
            
        }

        if scene == 8{
            
            performSegueWithIdentifier("toEnd", sender: nil)
            
        }
        
        if scene == 9{
            
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
                    label.text = "Scene 10"
                case 1:
                    label.text = "On your way back to the brush house,"
                case 2:
                    label.text = "you encounter a group of men who try to"
                case 3:
                    label.text = "forcefully steal the pearl from you."
                case 4:
                    label.text = ""
                case 5:
                    label.text = "You..."
                case 6:
                    label.text = ""
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                    
                }
                
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3, closure: {
                    self.option1.setTitle("Fight them violently", forState: .Normal)
                    self.option2.setTitle("Run away", forState: .Normal)
                })
            }
            
        }

        if scene == 10{
            
            continueView.alpha = 1
            
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
                    label.text = "Scene 11"
                case 1:
                    label.text = "You viciously fight the group of"
                case 2:
                    label.text = "robbers. You kill one of them, causing"
                case 3:
                    label.text = "the others to flee. However, you drop"
                case 4:
                    label.text = "the pearl in the process. You are slowly"
                case 5:
                    label.text = "becoming a murderer. The pearl is"
                case 6:
                    label.text = "unleashing your evil."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                    
                }
                
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    
                    
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                    
                    
                })
            }
            
        }
        
        if scene == 11{
            
            continueView.alpha = 0
            
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
                    label.text = "Scene 12"
                case 1:
                    label.text = "As Juana returns to the brush house,"
                case 2:
                    label.text = "she sees the pearl, then finds you. Now"
                case 3:
                    label.text = "that you are guilty of murder, you and"
                case 4:
                    label.text = "Juana truly must leave the town."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "You agree to..."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Give up the pearl", forState: .Normal)
                    self.option2.setTitle("Prepare to head to the capital", forState: .Normal)
                })
            }
        }

        if scene == 12{
            
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
                    label.text = "Scene 13"
                case 1:
                    label.text = "You search for your canoe, and"
                case 2:
                    label.text = "find it obliterated. You then climb up"
                case 3:
                    label.text = "a hill, to see that your house"
                case 4:
                    label.text = "has burned down."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "Desperate, you..."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Start your escape", forState: .Normal)
                    self.option2.setTitle("Seek refuge in Juan Tomás’ house", forState: .Normal)
                })
            }
            
            
        }

        if scene == 13{
            
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
                    label.text = "Scene 14"
                case 1:
                    label.text = "At sunset, You start your journey"
                case 2:
                    label.text = "to the capital. You discover that "
                case 3:
                    label.text = "three trackers are after you. You "
                case 4:
                    label.text = "travel north until sunrise, and..."
                case 5:
                    label.text = ""
                case 6:
                    label.text = ""
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(2.5, closure: {
                    self.option1.setTitle("Take shelter by the roadside", forState: .Normal)
                    self.option2.setTitle("Try to kill the trackers", forState: .Normal)
                })
            }
            
        }

        if scene == 14{
            
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
                    label.text = "Scene 15"
                case 1:
                    label.text = "Panicking, you try to hide your"
                case 2:
                    label.text = "family in the mountains as the"
                case 3:
                    label.text = "Juana takes care of Coyotito,"
                case 4:
                    label.text = "trackers pursue you. To mislead them,"
                case 5:
                    label.text = "you create a false trail. Finally, you"
                case 6:
                    label.text = "and your family rest..."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Right next to the stream", forState: .Normal)
                    self.option2.setTitle("In a small cave above a stream", forState: .Normal)
                })
            }
            
        }

        if scene == 15{
            
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
                    label.text = "Scene 16"
                case 1:
                    label.text = "Ironically, the trackers settle at"
                case 2:
                    label.text = "the stream around dusk. They make"
                case 3:
                    label.text = "a camp nearby as two of the men"
                case 4:
                    label.text = "sleep and one keeps watch."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "You plan to..."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Attack them before night arrives", forState: .Normal)
                    self.option2.setTitle("Hide until they leave", forState: .Normal)
                })
            }
            
        }

        if scene == 16 {
            

            continueView.alpha = 1
            
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
                    label.text = "Scene 17"
                case 1:
                    label.text = "You tell Juana to keep the baby quiet"
                case 2:
                    label.text = "and make your way down to the trackers."
                case 3:
                    label.text = "As you’re about to attack, Coyotito cries"
                case 4:
                    label.text = "out and one of the men shoots in his"
                case 5:
                    label.text = "direction thinking It is a coyote. As he"
                case 6:
                    label.text = "pulls out his rifle, you kill all three of"
                case 7:
                    label.text = "The men. Unfortunately, however, the bullet"
                case 8:
                    label.text = "has hit Coyotito directly in the head and"
                case 9:
                    label.text = "killed him. You have no hope left now"
                case 10:
                    label.text = "that your son is dead."
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(5.5, closure: {
                    
                    
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                    
                    
                    
                })
            }
            
        }

        if scene == 17{
            

            

            continueView.alpha = 1
            self.continueButton.setTitle("Back to the beginning", forState: .Normal)
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
                    label.text = "Scene 18"
                case 1:
                    label.text = "You and Juana make your way back"
                case 2:
                    label.text = "Through the town walking side by side"
                case 3:
                    label.text = "full of despair; Coyotito’s bloody remains"
                case 4:
                    label.text = "In Juana’s shawl. Together, you walk to the"
                case 5:
                    label.text = "Oceanside. You take one last look into the"
                case 6:
                    label.text = "evil pearl, then fling it out to sea—"
                case 7:
                    label.text = "and watch as it disappears into the sunset."
                case 8:
                    label.text = ""
                case 9:
                    label.text = "The End. Congradulations, You have"
                case 10:
                    label.text = "followed the path of Kino. "
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(5.5, closure: {
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                })
            }
        }

        if scene == 18 {
            
            continueView.alpha = 0
            
            performSegueWithIdentifier("restartWinner", sender: nil)
            
        }
        
        
        
        
    }

    
    @IBAction func option1(sender: UIButton) {
        
        
        self.option1.setTitle("", forState: .Normal)
        self.option2.setTitle("", forState: .Normal)
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
                    label.text = "Because you are of a different race"
                case 2:
                    label.text = "and cannot afford to pay for his"
                case 3:
                    label.text = "superior services, the doctor"
                case 4:
                    label.text = "rejects you."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "What do you do?"
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                    
                }
                
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Steal money to pay the doctor", forState: .Normal)
                    self.option2.setTitle("Help Coyotito in a different way", forState: .Normal)
                })
            }
        }
        
        if scene == 2{
            
            
            
            self.performSegueWithIdentifier("toEnd", sender: nil)
            
        }
        
        if scene == 3{
            
            
            self.performSegueWithIdentifier("toEnd", sender: nil)
            
        }
        
        if scene == 5{
            
            continueView.alpha = 1

            
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
                    label.text = "Scene 6"
                case 1:
                    label.text = "Within the hour, Coyotito becomes"
                case 2:
                    label.text = "concerningly ill. The doctor returns,"
                case 3:
                    label.text = "giving Coyotito medicine, then asks"
                case 4:
                    label.text = "about payment. You tell him you are"
                case 5:
                    label.text = "planning to sell the pearl you have"
                case 6:
                    label.text = "found. He looks interested, then leaves."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                })
            }
        }
        if scene == 7{
            
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
                    label.text = "Scene 8"
                case 1:
                    label.text = "The next morning, you walk into"
                case 2:
                    label.text = "town to sell the pearl. Your brother,"
                case 3:
                    label.text = "Juan Tomás, warns you about rip-off"
                case 4:
                    label.text = "deals. Several dealers approach you and"
                case 5:
                    label.text = "bid low, which they have planned"
                case 6:
                    label.text = "beforehand. One man raises the bid"
                case 7:
                    label.text = "to 1500 pesos."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    self.option1.setTitle("Great deal!", forState: .Normal)
                    self.option2.setTitle("Plan to sell the pearl at the capital", forState: .Normal)
                })
            }
            
        }
        
        if scene == 8{
            
            performSegueWithIdentifier("toEnd", sender: nil)
            
        }
        
        if scene == 9{
            
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
                    label.text = "Scene 10"
                case 1:
                    label.text = "On your way back to the brush house,"
                case 2:
                    label.text = "you encounter a group of men who try to"
                case 3:
                    label.text = "forcefully steal the pearl from you."
                case 4:
                    label.text = ""
                case 5:
                    label.text = "You..."
                case 6:
                    label.text = ""
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                    
                }
                
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3, closure: {
                    self.option1.setTitle("Fight them violently", forState: .Normal)
                    self.option2.setTitle("Run away", forState: .Normal)
                })
            }
            
        }
        
        if scene == 10{
            
            continueView.alpha = 1

            
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
                    label.text = "Scene 11"
                case 1:
                    label.text = "You viciously fight the group of"
                case 2:
                    label.text = "robbers. You kill one of them, causing"
                case 3:
                    label.text = "the others to flee. However, you drop"
                case 4:
                    label.text = "the pearl in the process. You are slowly"
                case 5:
                    label.text = "becoming a murderer. The pearl is"
                case 6:
                    label.text = "unleashing your evil."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                    
                }
                
                label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    
                    
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                    
                    
                })
            }
            
        }
        if scene == 12{
            
            performSegueWithIdentifier("toEnd", sender: nil)
        }
        if scene == 13{
            
            performSegueWithIdentifier("toEnd", sender: nil)
        }
        if scene == 15{
            
            performSegueWithIdentifier("toEnd", sender: nil)
        }
        
        if scene == 14{
            
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
                    label.text = "Scene 15"
                case 1:
                    label.text = "Panicking, you try to hide your"
                case 2:
                    label.text = "family in the mountains as the"
                case 3:
                    label.text = "Juana takes care of Coyotito,"
                case 4:
                    label.text = "trackers pursue you. To mislead them,"
                case 5:
                    label.text = "you create a false trail. Finally, you"
                case 6:
                    label.text = "and your family rest...."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Right next to the stream", forState: .Normal)
                    self.option2.setTitle("In a small cave above a stream", forState: .Normal)
                })
            }
            
        }
        
        if scene == 16 {
            

            continueView.alpha = 1
            
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
                    label.text = "Scene 17"
                case 1:
                    label.text = "You tell Juana to keep the baby quiet"
                case 2:
                    label.text = "and make your way down to the trackers."
                case 3:
                    label.text = "As you’re about to attack, Coyotito cries out"
                case 4:
                    label.text = "and one of the men shoots in his direction"
                case 5:
                    label.text = "thinking It is a coyote. As he pulls out his"
                case 6:
                    label.text = "rifle, you sneak up and kill all three of the"
                case 7:
                    label.text = "men. Unfortunately, however, the bullet has"
                case 8:
                    label.text = "Hit Coyotito directly in the head and killed"
                case 9:
                    label.text = "him. You have no hope left now that your son"
                case 10:
                    label.text = "is dead."
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(5.5, closure: {
                    
                    
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                    
                    
                    
                })
            }
            
        }
        
        //112_1_2211_22121__
        
    }
    //MARK: - secondButton
    
    @IBAction func option2(sender: UIButton) {
        
        self.option1.setTitle("", forState: .Normal)
        self.option2.setTitle("", forState: .Normal)
        
        actionPressed()
        
        
        
        if scene == 1 {
            
            self.performSegueWithIdentifier("toEnd", sender: nil)
        }
        
        if scene == 2{
            
            
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
                    label.text = "Scene 3"
                case 1:
                    label.text = "You set off your family canoe"
                case 2:
                    label.text = "to search for pearls, while"
                case 3:
                    label.text = "Juana takes care of Coyotito."
                case 4:
                    label.text = "You find an enormous pearl and"
                case 5:
                    label.text = "howl out crying in happiness."
                case 6:
                    label.text = ""
                case 7:
                    label.text = "You decide to..."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    self.option1.setTitle("Go diving to find more pearls", forState: .Normal)
                    self.option2.setTitle("Bring boats in to examine the pearl", forState: .Normal)
                })
            }
        }
        
        
        if scene == 3{
            
            
            
            continueView.alpha = 1

            
            
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
                    label.text = "Scene 4"
                case 1:
                    label.text = "News about your discovery rapidly"
                case 2:
                    label.text = "spreads around your town. You"
                case 3:
                    label.text = "celebrate with your neighbors,"
                case 4:
                    label.text = "and speak of your ambitions. You"
                case 5:
                    label.text = "hope for a wedding in the church,"
                case 6:
                    label.text = "new clothes, an education for "
                case 7:
                    label.text = "Coyotito, and a rifle."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    
                    
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                    
                    
                    
                })
            }
            
            
        }
        if scene == 5 {
            
            performSegueWithIdentifier("toEnd", sender: nil)
            
        }
        
        if scene == 7{
            
            performSegueWithIdentifier("toEnd", sender: nil)
            
        }
        if scene == 8{
            
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
                    label.text = "Scene 9"
                case 1:
                    label.text = "In the middle of the night, Juana"
                case 2:
                    label.text = "steals the pearl and leaves the house."
                case 3:
                    label.text = "You wake up and slowly follow her"
                case 4:
                    label.text = "just as she is about to throw it into"
                case 5:
                    label.text = "the sea."
                case 6:
                    label.text = ""
                case 7:
                    label.text = "You..."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    self.option1.setTitle("Beat her violently and get the pearl", forState: .Normal)
                    self.option2.setTitle("Agree to dispose the pearl", forState: .Normal)
                })
            }
        }
        if scene == 9{
            
            performSegueWithIdentifier("toEnd", sender: nil)
            
            
            
        }
        if scene == 10{
            
            performSegueWithIdentifier("toEnd", sender: nil)
            
            
        }
        
        if scene == 12{
            
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
                    label.text = "Scene 13"
                case 1:
                    label.text = "You search for your canoe, and"
                case 2:
                    label.text = "find it obliterated. You then climb up"
                case 3:
                    label.text = "a hill, to see that your house"
                case 4:
                    label.text = "has burned down."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "Desperate, you..."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Start your escape", forState: .Normal)
                    self.option2.setTitle("Seek refuge in Juan Tomás’ house", forState: .Normal)
                })
            }
            
            
        }
        if scene == 13{
            
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
                    label.text = "Scene 14"
                case 1:
                    label.text = "At sunset, You start your journey"
                case 2:
                    label.text = "to the capital. You discover that "
                case 3:
                    label.text = "three trackers are after you. You "
                case 4:
                    label.text = "travel north until sunrise, and..."
                case 5:
                    label.text = ""
                case 6:
                    label.text = ""
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(2.5, closure: {
                    self.option1.setTitle("Take shelter by the roadside", forState: .Normal)
                    self.option2.setTitle("Try to kill the trackers", forState: .Normal)
                })
            }
            
        }
        if scene == 16{
            performSegueWithIdentifier("toEnd", sender: nil)
            
        }
        
        if scene == 14{
            
            performSegueWithIdentifier("toEnd", sender: nil)
        }
        
        
        if scene == 15{
            
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
                    label.text = "Scene 16"
                case 1:
                    label.text = "Ironically, the trackers settle at"
                case 2:
                    label.text = "the stream around dusk. They make"
                case 3:
                    label.text = "a camp nearby as two of the men"
                case 4:
                    label.text = "sleep and one keeps watch."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "You plan to..."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("attack Them before night arrives", forState: .Normal)
                    self.option2.setTitle("hide until they leave", forState: .Normal)
                })
            }
            
        }
        
        
        
        
        //112_1_2211_22121__
        
    }
    
    //MARK: - Continue Function
    
    @IBOutlet weak var continueButton: UIButton!
    
    @IBAction func Continue(sender: AnyObject) {
        
        
        
        
        self.option1.setTitle("", forState: .Normal)
        self.option2.setTitle("", forState: .Normal)
        actionPressed()
        if scene == 4{
            continueView.alpha = 0
            
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
                    label.text = "Scene 5"
                case 1:
                    label.text = "Later that night, the priest visits,"
                case 2:
                    label.text = "blesses you, and reminds you to thank"
                case 3:
                    label.text = "God.  The doctor then arrives and tells"
                case 4:
                    label.text = "you that he was busy in the morning"
                case 5:
                    label.text = "but can now help cure Coyotito."
                case 6:
                    label.text = ""
                case 7:
                    label.text = "You decide to..."
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4, closure: {
                    self.option1.setTitle("Allow the doctor to treat Coyotito", forState: .Normal)
                    self.option2.setTitle("Kick the doctor out of your house", forState: .Normal)
                })
            }
            
        }
        
        if scene == 6{
            
            continueView.alpha = 0
            
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
                    label.text = "Scene 7"
                case 1:
                    label.text = "In the middle of the night, you wake up"
                case 2:
                    label.text = "to a thief digging for the pearl."
                case 3:
                    label.text = "You get into a bloody fight and manage"
                case 4:
                    label.text = "to chase him away. Angrily,"
                case 5:
                    label.text = "Juana suggests that you abandon"
                case 6:
                    label.text = "the pearl."
                case 7:
                    label.text = ""
                case 8:
                    label.text = "You..."
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                    
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(4.5, closure: {
                    self.option1.setTitle("Reject her idea and keep the pearl", forState: .Normal)
                    self.option2.setTitle("Agree to abandon the pearl", forState: .Normal)
                })
            }
            
            
            
        }
        
        if scene == 11{
            
            continueView.alpha = 0
            
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
                    label.text = "Scene 12"
                case 1:
                    label.text = "As Juana returns to the brush house,"
                case 2:
                    label.text = "she sees the pearl, then finds you. Now"
                case 3:
                    label.text = "that you are guilty of murder, you and"
                case 4:
                    label.text = "Juana truly must leave the town."
                case 5:
                    label.text = ""
                case 6:
                    label.text = "You agree to..."
                case 7:
                    label.text = ""
                case 8:
                    label.text = ""
                case 9:
                    label.text = ""
                case 10:
                    label.text = ""
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(3.5, closure: {
                    self.option1.setTitle("Give up the pearl", forState: .Normal)
                    self.option2.setTitle("Prepare to head to the capital", forState: .Normal)
                })
            }
        }
        if scene == 17{
            

            

            continueView.alpha = 1
            self.continueButton.setTitle("Back to the beginning", forState: .Normal)
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
                    label.text = "Scene 18"
                case 1:
                    label.text = "You and Juana make your way back"
                case 2:
                    label.text = "Through the town walking side by side"
                case 3:
                    label.text = "full of despair; Coyotito’s bloody remains"
                case 4:
                    label.text = "In Juana’s shawl. Together, you walk to the"
                case 5:
                    label.text = "Oceanside. You take one last look into the"
                case 6:
                    label.text = "evil pearl, then fling it out to sea—"
                case 7:
                    label.text = "and watch as it disappears into the sunset."
                case 8:
                    label.text = ""
                case 9:
                    label.text = "The End. congratulations, You have"
                case 10:
                    label.text = "followed the path of Kino. "
                default:
                    break
                }
                //label.fitFontForSize(10, maxFontSize: font!.pointSize, accuracy: 1.0)
                instructionLabels.append(label)
                delay(Double(i) * 0.5 + 0.5, closure: {
                    self.view.addSubview(label)
                    label.drawOutlineAnimatedWithLineWidth(1.0, withDuration: 0.5, fadeToLabel: true)
                })
                delay(5.5, closure: {
                    UIView.animateWithDuration(1,
                        delay: 0,
                        options: UIViewAnimationOptions.CurveLinear,
                        animations: {
                            self.continueButton.alpha = 1
                        }, completion: nil)
                })
            }
        }
        
        
        
        
        if scene == 18 {
            
            continueView.alpha = 0
            
            performSegueWithIdentifier("restartWinner", sender: nil)
            
        }
    }
    
    
    
    
    
    
    func actionPressed(){
        scene += 1
        for i in 0...instructionLabels.count - 1 {
            instructionLabels[i].text! = ""
            self.view.addSubview(instructionLabels[i])
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