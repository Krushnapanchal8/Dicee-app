//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceArray = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),
                     UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),
                     UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
    }
    
}

