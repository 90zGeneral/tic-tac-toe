//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Roydon Jeffrey on 7/25/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //To determine whose turn it is. 1 = x, 2 = o
    var currentPlayer = 1
    
    //To determine when a winner should be label
    let winningCombos = []
    
    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var startReset: UIButton!
    
    //This will represent all image changes with the buttons
    @IBOutlet var buttonLabel: UIButton!
    
    //To control all 9 button press by linking them all to this method
    @IBAction func buttonPress(sender: AnyObject) {
        
        //To interchange between x's and o's upon button click
        if currentPlayer == 1 {
            
            sender.setImage(UIImage(named: "tic-tac-toe-x"), forState: .Normal)
            currentPlayer = 2
        }else {
            sender.setImage(UIImage(named: "tic-tac-toe-o"), forState: .Normal)
            currentPlayer = 1
        }
    }
    
    //To control the the game operations
    @IBAction func startGame(sender: AnyObject) {
        
        resultsLabel.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

