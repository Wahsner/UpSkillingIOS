//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    @IBOutlet weak var diceTotalString: UILabel!
    
    var leftDiceNumber: Int = 0;
    var rightDiceNumber: Int = 0;
    
    let diceArray = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ];

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 1...5);
        rightDiceNumber = Int.random(in: 1...5);
        
        diceImageOne.image = diceArray[leftDiceNumber];
        diceImageTwo.image = diceArray[rightDiceNumber];
        
        diceTotalString.text = String(leftDiceNumber + rightDiceNumber + 2);
    }
}

