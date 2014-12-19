//
//  ViewController.swift
//  Postcard
//
//  Created by Wei Hern Lim on 11/5/14.
//  Copyright (c) 2014 Wei Hern Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextfield: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code will evaluate when we press the button
        //Adding a comment here to test commits
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterMessageTextfield.text
        nameLabel.textColor = UIColor.greenColor()
        
        enterNameTextfield.text = ""
        enterNameTextfield.resignFirstResponder()
        
        enterMessageTextfield.resignFirstResponder()
        enterMessageTextfield.text = ""
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
     }
    

}

