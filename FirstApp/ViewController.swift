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
    
    @IBOutlet weak var slider: UISlider!
    
    // Change slider position for font and color
    @IBAction func onSlide(sender: AnyObject) {
        let sliderValue = CGFloat(slider.value)
        cosbyLabel.font = UIFont(name: cosbyLabel.font.fontName, size: 300.0 * sliderValue)
        cosbyLabel.textColor = UIColor(red: sliderValue / 2.0, green: sliderValue, blue: sliderValue / 2.5, alpha: 1.0)
    }
    
    // Change the name on the label when you click on the button
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

