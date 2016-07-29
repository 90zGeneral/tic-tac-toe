//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Roydon Jeffrey on 7/25/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //To determine when a winner should be label
    let winningCombos = []
    
    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var startReset: UIButton!
    
    //To control the image display of each slot on board
    @IBOutlet var slot1Label: UIButton!
    @IBOutlet var slot2Label: UIButton!
    @IBOutlet var slot3Label: UIButton!
    @IBOutlet var slot4Label: UIButton!
    @IBOutlet var slot5Label: UIButton!
    @IBOutlet var slot6Label: UIButton!
    @IBOutlet var slot7Label: UIButton!
    @IBOutlet var slot8Label: UIButton!
    @IBOutlet var slot9Label: UIButton!
    
    //To control the the game operations
    @IBAction func startGame(sender: AnyObject) {
        
        resultsLabel.text = ""
        
    }
    
    //The button control for slot 1
    @IBAction func slot1(sender: AnyObject) {
    }
    
    //The button control for slot 2
    @IBAction func slot2(sender: AnyObject) {
    }
    
    //The button control for slot 3
    @IBAction func slot3(sender: AnyObject) {
    }
    
    //The button control for slot 4
    @IBAction func slot4(sender: AnyObject) {
    }
    
    //The button control for slot 5
    @IBAction func slot5(sender: AnyObject) {
    }
    
    //The button control for slot 6
    @IBAction func slot6(sender: AnyObject) {
    }
    
    //The button control for slot 7
    @IBAction func slot7(sender: AnyObject) {
    }
    
    //The button control for slot 8
    @IBAction func slot8(sender: AnyObject) {
    }
    
    //The button control for slot 9
    @IBAction func slot9(sender: AnyObject) {
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

