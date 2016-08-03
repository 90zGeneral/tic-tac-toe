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
    
    //To prevent any override btw x and o
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    var totalClick = 0
    
    //To determine when a winner should be labeled
    let winningCombos = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                         [0, 3, 6], [1, 4, 7], [2, 5, 8],
                         [0, 4, 8], [2, 4, 6]
                        ]
    
    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var startReset: UIButton!
    
    //This will represent all image changes with the buttons
    @IBOutlet var buttonLabel: UIButton!
    
    //To control all 9 button press by linking them all to this method
    @IBAction func buttonPress(sender: AnyObject) {
        
        //Check if an x or o image should be placed based on current board state without overriding each other
        if gameState[sender.tag] == 0 {
            gameState[sender.tag] = currentPlayer
            
            //To switch turn btw players
            if currentPlayer == 1 {
                sender.setImage(UIImage(named: "tic-tac-toe-x copy"), forState: .Normal)
                currentPlayer = 2
            }else {
                sender.setImage(UIImage(named: "tic-tac-toe-o copy"), forState: .Normal)
                currentPlayer = 1
            }
            
            for comboSet in winningCombos {
                if gameState[comboSet[0]] != 0 {
                    if ((gameState[comboSet[0]] == gameState[comboSet[1]]) && (gameState[comboSet[1]] == gameState[comboSet[2]])) {
                        if gameState[comboSet[0]] == 1 {
                            resultsLabel.text = "X Wins!!"
                        }else {
                            resultsLabel.text = "O Wins!!"
                        }
                        
                        //To Animate the label back onto the screen
                        resultsLabel.hidden = false
                        UIView.animateWithDuration(0.5, animations: {
                            self.resultsLabel.center = CGPointMake(self.resultsLabel.center.x + 400, self.resultsLabel.center.y)
                        })
                    }
                }
            }
            
            totalClick += 1
            
            if totalClick == 9 && resultsLabel.text != "X Wins!!" && resultsLabel.text != "O Wins!!" {
                resultsLabel.text = "DRAW!!"
            }
        }
    }
    
    //To control the the game operations
    @IBAction func startGame(sender: AnyObject) {
        
        resultsLabel.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //To hide the label off the screen
        resultsLabel.hidden = true
        resultsLabel.center = CGPointMake(resultsLabel.center.x - 400, resultsLabel.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

