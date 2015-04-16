//
//  ShowWinnerViewController.swift
//  Roshambo II
//
//  Created by Rod Paras on 4/15/15.
//  Copyright (c) 2015 Rodacity. All rights reserved.
//

import UIKit

class ShowWinnerViewController: UIViewController {

    
    var myChoice: Int?
    var phoneChoice: Int?
    
    @IBOutlet var winner: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        
        println("info")
        println(myChoice)
        println(phoneChoice)
        
        
        if let myChoice = self.myChoice {

            determineWinner()
                //self.winner.image = UIImage(named: "Rock")

        } else {
                    self.winner.image = nil;
        }
        
        
    }

    func determineWinner() {
        if myChoice == phoneChoice {
            self.winner.image = UIImage(named: "Tie")
        } else {
            self.winner.image = UIImage(named: "PaperCoversRock")
        }
    }
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
}
