//
//  ViewController.swift
//  FirstApp
//
//  Created by Ariel Gomez A_ on 2/17/16.
//  Copyright © 2016 Ariel Gomez A_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cosbyLabel: UILabel!
    
    @IBAction func onClick(sender: AnyObject) {
        if (cosbyLabel.text != "Bill Cosby") {
            cosbyLabel.text = "Bill Cosby"
        }
        else {
            cosbyLabel.text = "Miley Cyrus"
        }
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

