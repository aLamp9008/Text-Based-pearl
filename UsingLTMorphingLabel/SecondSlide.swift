//
//  SecondSlide.swift
//  UsingLTMorphingLabel
//
//  Created by alden lamp on 6/11/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit

class SecondSlide: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destination = segue.destinationViewController
        if let symbolOrTheme = destination as? ThemesAndSymbols{
            
            slideForThemesAndSymbols = 2
            
            if sender!.currentTitle == "Symbolism"{
                isTheme = false
                
            }
            if sender!.currentTitle == "Themes"{
                
                isTheme = true
                
            }
            
        }
    }
}
