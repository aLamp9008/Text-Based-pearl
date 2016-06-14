//
//  Themes.swift
//  Kino's Adventure
//
//  Created by alden lamp on 6/13/16.
//  Copyright © 2016 alden lamp. All rights reserved.
//

import UIKit

class ThemesPerChapter: UIViewController {

    @IBOutlet weak var titlelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if theme == 1{
            titlelabel.text = "Greed/Ambition"
            textBox.text = "Steinbeck paints a clear picture of what greed means in this story. Greed and ambition are always evil, and bring nothing but suffering and destruction. As Kino seeks a brighter future through the pearl, he transforms from a happy, spirited father into a murderer and a wanted criminal. This demonstrates how greed and ambition have the power to destroy innocence. Also, from Kino’s desires, the pearl transforms from a bright sign of beauty at first sight to an evil ball of shame and despair. The pearl causes Kino to become evil and act violently, all as a result of his greed and never-ending ambition to gain wealth and status."
            
            
        }
        if theme == 2{
        titlelabel.text = "Community/Family"
            textBox.text = "Community and Family are two important themes portrayed in Steinbeck’s The Pearl. They The whole motive of the story is to help a family member. Kino’s entire community is in harmony and the Song of the Family can be heard, that is, until he finds the pearl and gains ambition. “In his mind a new song had come, the Song of Evil, the music of the enemy, of any foe of the family, a savage, secret, dangerous melody, and underneath, the Song of the Family cried plaintively” (5). When the Song of Evil first appears, Kino describes it as anything that interferes with his family’s safety. It is clear that he protects his family above all else (even himself)."
            
        }
        
    }

    @IBOutlet weak var textBox: UITextView!

    


}
