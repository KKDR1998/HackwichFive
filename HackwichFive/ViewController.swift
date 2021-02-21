//
//  ViewController.swift
//  HackwichFive
//
//  Created by User on 2/20/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // declare and assign a global variable
    
    var currentIndex = 0
    
    // declare and assign a global variable that is an array that holds a collection of strings that are names of our favorite foods
    
    var favoriteFoodsArray = ["Burgers", "Poke", "Loco Moco", "Fries",]
    
    
    
    @IBOutlet weak var topLabel: UILabel!
    
    
    @IBOutlet weak var bottomLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topLabel.text = "My Favorite Foods"
        
        //set bottomLabel to display the item at "currentIndex" upon launch of app
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        
        
    }


}

