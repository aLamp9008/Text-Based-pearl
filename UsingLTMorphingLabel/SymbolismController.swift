//
//  SymbolismController.swift
//  Kino's Adventure
//
//  Created by alden lamp on 6/12/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit

public var Symbol = 0

class SymbolismController: UIViewController {

    @IBAction func back(sender: AnyObject) {
        
        
        
    }

    @IBAction func thePearl(sender: AnyObject) {
        
        Symbol = 1
        performSegueWithIdentifier("showThemePerChapter", sender: nil)
        
    }
    
    @IBAction func theScorpion(sender: AnyObject) {
        
        Symbol = 2
        performSegueWithIdentifier("showThemePerChapter", sender: nil)
        
    }
    
    @IBAction func theCanoe(sender: AnyObject) {
        
        Symbol = 3
        performSegueWithIdentifier("showThemePerChapter", sender: nil)
        
    }
    
    @IBAction func theRifle(sender: AnyObject) {
        
        Symbol = 4
        performSegueWithIdentifier("showThemePerChapter", sender: nil)
        
    }

    
}
