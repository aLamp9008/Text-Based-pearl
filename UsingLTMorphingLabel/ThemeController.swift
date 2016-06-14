//
//  ThemeController.swift
//  
//
//  Created by alden lamp on 6/12/16.
//
//

import UIKit

public var theme = 0

class ThemeController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func back(sender: AnyObject) {
        
        if isdead == true{
            
            performSegueWithIdentifier("backThemeEnd", sender: nil)
            
        }else if isdead == false {
            
            performSegueWithIdentifier("backThemeSlide", sender: nil)
            
        }
        
    }

    @IBAction func greed(sender: AnyObject) {
        
        theme = 1
        performSegueWithIdentifier("showThemePerChapter", sender: nil)
    }
    
    
    @IBAction func family(sender: AnyObject) {
        theme = 2
        performSegueWithIdentifier("showThemePerChapter", sender: nil)
        
        
    }
    
    
}
