//
//  ThemesAndSymbols.swift
//  UsingLTMorphingLabel
//
//  Created by alden lamp on 6/11/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit

class ThemesAndSymbols: UIViewController {
 
    
    @IBAction func trasition(sender: AnyObject) {
        
        if slideForThemesAndSymbols == 0{
            
            
        } else if slideForThemesAndSymbols == 1{
            performSegueWithIdentifier("showFirstSlide", sender: nil)
            
        }else if slideForThemesAndSymbols == 2{
            performSegueWithIdentifier("showSecondSlide", sender: nil)
            
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
    }
    

}
