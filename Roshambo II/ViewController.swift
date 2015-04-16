//
//  ViewController.swift
//  Roshambo II
//
//  Created by Rod Paras on 4/15/15.
//  Copyright (c) 2015 Rodacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        println("randon value")
        println(randomValue)
        return Int(randomValue)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as! ShowWinnerViewController
        
        if segue.identifier == "selectScissors" {
            controller.myChoice = 3
            controller.phoneChoice = self.randomDiceValue()
        } else {
            controller.myChoice = 2
            controller.phoneChoice = self.randomDiceValue()
        }
    }

    @IBAction func selectPaper(sender: UIButton) {
       performSegueWithIdentifier("selectPaper", sender: self)
    }
    
    @IBAction func selectRock(sender: UIButton) {
        
        var controller: ShowWinnerViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ShowWinnerViewController") as! ShowWinnerViewController
        
        controller.myChoice = 1
        controller.phoneChoice = self.randomDiceValue()
        
        presentViewController(controller, animated: true, completion: nil)
        
    }

}