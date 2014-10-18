//
//  ViewController.swift
//  Postcard
//
//  Created by Francisco J. Fernandez López on 11/10/14.
//  Copyright (c) 2014 Francisco J. Fernandez López. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        // Comment for testing commits
        
        labelMessage.text = enterMessageTextField.text
        labelMessage.hidden = false
        labelMessage.textColor = UIColor.redColor()
        
        labelName.text=enterNameTextField.text
        labelName.hidden = false
        labelName.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }


}

