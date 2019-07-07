//
//  ViewController.swift
//  DiceApp
//
//  Created by Damian Falcon on 6/5/19.
//  Copyright © 2019 Damian Falcon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //array holding dice images
    var diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //random dice variable
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    var randomDiceIndex3: Int = 0
    var randomDiceIndex4: Int = 0
    
    //number of dice variables
    @IBOutlet var numberOfDice: [UIButton]!
    
    //dice image views
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    

    //opening screen
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadingScreen()
        updateDiceImages()
    }
    
    //Dice button menu
    @IBAction func diceButtonPressed(_ sender: Any) {
        numberOfDice.forEach{(button) in button.isHidden = !button.isHidden
            
        }
    }
    
    
    //dice button menu buttons pressed
    @IBAction func oneDicePressed(_ sender: Any) {
        //dice one position
        diceImageView1.frame.origin.x = 137
        diceImageView1.frame.origin.y = 450
        
        //show and hide dice
        diceImageView1.isHidden = false
        diceImageView2.isHidden = true
        diceImageView3.isHidden = true
        diceImageView4.isHidden = true
    }
    
    @IBAction func twoDicePressed(_ sender: Any) {
        //dice one position
        diceImageView1.frame.origin.x = 50
        diceImageView1.frame.origin.y = 450
        
        //dice two position
        diceImageView2.frame.origin.x = 250
        diceImageView2.frame.origin.y = 450
        
        //show and hide dice
        diceImageView1.isHidden = false
        diceImageView2.isHidden = false
        diceImageView3.isHidden = true
        diceImageView4.isHidden = true
    }
    
    @IBAction func threeDicePressed(_ sender: Any) {
        //dice one position
        diceImageView1.frame.origin.x = 50
        diceImageView1.frame.origin.y = 350
        
        //dice two position
        diceImageView2.frame.origin.x = 250
        diceImageView2.frame.origin.y = 350
        
        //dice three position
        diceImageView3.frame.origin.x = 137
        diceImageView3.frame.origin.y = 525
        
        //show and hide dice
        diceImageView1.isHidden = false
        diceImageView2.isHidden = false
        diceImageView3.isHidden = false
        diceImageView4.isHidden = true
    }
    
    @IBAction func fourDicePressed(_ sender: Any) {
        //dice one position
        diceImageView1.frame.origin.x = 50
        diceImageView1.frame.origin.y = 350
        
        //dice two position
        diceImageView2.frame.origin.x = 250
        diceImageView2.frame.origin.y = 350
        
        //dice three position
        diceImageView3.frame.origin.x = 50
        diceImageView3.frame.origin.y = 525
        
        //dice four position
        diceImageView4.frame.origin.x = 250
        diceImageView4.frame.origin.y = 525
        
        //show and hide dice
        diceImageView1.isHidden = false
        diceImageView2.isHidden = false
        diceImageView3.isHidden = false
        diceImageView4.isHidden = false
    }
    
    
    //roll button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    //positons one dice and hides the rest
    func loadingScreen(){
        diceImageView1.frame.origin.x = 137
        diceImageView1.frame.origin.y = 450
        
        diceImageView2.isHidden = true
        diceImageView3.isHidden = true
        diceImageView4.isHidden = true
    }
    
    
    //Roll dice function; dice doesnt roll
    func updateDiceImages(){
        //randomize all dice rolls
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        randomDiceIndex3 = Int.random(in: 0 ... 5)
        randomDiceIndex4 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        diceImageView3.image = UIImage(named: diceArray[randomDiceIndex3])
        diceImageView4.image = UIImage(named: diceArray[randomDiceIndex4])
    }
    
    
}




