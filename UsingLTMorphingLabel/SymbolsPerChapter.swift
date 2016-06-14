//
//  SymbolsPerChapter.swift
//  Kino's Adventure
//
//  Created by alden lamp on 6/13/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit

class SymbolsPerChapter: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var paragraphTextBox: UITextView!
    
    @IBOutlet weak var chPreview: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if Symbol == 1{
            
            titleLabel.text = "The Pearl"
            paragraphTextBox.text = "The largest and most complex symbol in Steinbeck’s The Pearl, is the pearl itself. In the beginning, when Kino discovers the pearl, the pearl is described as “clear and beautiful, rich and warm and lovely, glowing and gloating and triumphant” (Steinbeck 19). As time passes, it becomes evident that the pearl represents the changes in Kino, as everything that happens to it has a parallel effect on his life. As the pearl evolves from a symbol of nature to one of materialistic wealth, Kino becomes increasingly greedy. As the pearl is described later on in the book as evil, Kino’s life turns evil with all of his belongings lost."
            
        }
        if Symbol == 2{
            
            titleLabel.text = "The Scorpion"
            paragraphTextBox.text = "The scorpion symbolizes pure evil in Steinbeck’s The Pearl. It represents an unpredictable attack on the innocent, and the natural destruction that is arbitrarily brought to mankind, as shown when the it stings Coyotito. This differs from the evil that is sought in mankind, which is a result of greed and ambition, as Steinbeck portrays in Kino. These acts of ruination are inevitable, and the scorpion poisoning Coyotito exemplifies one of many possible outcomes. Not only does it act as a symbol, but the scorpion also foreshadows the evil that is to come. This natural destruction repeats numerously in the story as Kino grows increasingly ambitious with the pearl."
            
        }
        if Symbol == 3{
            titleLabel.text = "The Rifle"
            paragraphTextBox.text = "The rifle is one of the hopes Kino sees in the pearl. It symbolizes the line between Native-Mexican society and European colonial society. Owning a rifle would break the border for Kino, as he would reach the same social class as the wealthy capitol and the doctor. The rifle also represents greed and the deep change in Kino’s character. At first, Kino seeks to buy a treatment for Coyotito, with money from selling the pearl. However, his potential wealth triggers his greed, and he seeks to destroy those who may steal from him, rather than protect his own son. Also, ironically, Kino fulfills his desire to get a rifle after killing the trackers, but under one condition— sacrificing Coyotito."
            
            
        }
        if Symbol == 4{
            titleLabel.text = "Kino’s Canoe"
            paragraphTextBox.text = "Kino’s canoe symbolizes his link to cultural tradition. It demonstrates his ability to provide for his ancestry and make a living. His canoe is important to him because it is a symbol of his livelihood and identity. When Kino sees his canoe destroyed, he turns emotional because the demolition breaks spiritual ties between him and his ancestry. “This was an evil beyond thinking. The killing of a man was not so evil as the killing of a boat. For a boat does not have sons, and a boat cannot protect itself, and a wounded boat does not heal” (Steinbeck 80). Because of this, we can conclude that Kino values things that can help him provide for his family. It is also significant that owning the pearl directly results in the destruction of Kino’s canoe; this represents the injudicious decision he makes to sacrifice connections with cultural heritage for wealth material gain."
            
            
        }
        
        
        
        
        
    }


    

}
