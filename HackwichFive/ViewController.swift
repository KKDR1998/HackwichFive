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
    
    //IBOutlet for button to accesss it's properties -- change its attributes
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topLabel.text = "My Favorite Foods"
        
        //set bottomLabel to display the item at "currentIndex" upon launch of app
        
        bottomLabel.text = favoriteFoodsArray[currentIndex]
        
        
    }


    @IBAction func buttonPressed(_ sender: Any)
    {
        //detects between the index and array numbers, to see which one is higher so the if-block will actiavte when the former is smaller than the latter
        if self.currentIndex < self.favoriteFoodsArray.count
        
        {
        
            
            //set bottomLaveltext to item in the array at currentIndex
            bottomLabel.text = favoriteFoodsArray[currentIndex]
            //set the title of the button to "Next"
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            //increases the index number by 1 so the word changes
            currentIndex += 1

            
        }else{
            
            //prints on consol so I know it works
            print("Button has been disabled")
            //disables the button so it cannot be pressed anymore.
            (buttonLabel!).isEnabled = false
            
        }
    
    
    
    
    }
    
    
    
    
}

