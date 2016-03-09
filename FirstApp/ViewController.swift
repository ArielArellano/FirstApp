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
    
    @IBOutlet weak var fontSwitch: UISwitch!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var numberStepper: UIStepper!
    
    var sliderValue: CGFloat!
    
    // Change the name on the label when you click on the button
    @IBAction func onClick(sender: AnyObject) {
        if (cosbyLabel.text == "Bill Cosby") {
            cosbyLabel.text = "Miley Cyrus"
        }
        else {
            cosbyLabel.text = "Bill Cosby"
        }
    }
    
    @IBAction func changeFont(sender: AnyObject) {
        sliderValue = CGFloat(slider.value)
        if (fontSwitch.on) {
            cosbyLabel.font = UIFont(name: "Arial", size: 320.0 * sliderValue)
        }
        else {
            cosbyLabel.font = UIFont(name: "h-UltraLight", size: 300.0 * sliderValue)
        }
    }
    
    // Change slider position for font and color
    @IBAction func onSlide(sender: AnyObject) {
        sliderValue = CGFloat(slider.value)
        cosbyLabel.font = UIFont(name: cosbyLabel.font.fontName, size: 300.0 * sliderValue)
        cosbyLabel.textColor = UIColor(red: sliderValue / 1.5, green: sliderValue, blue: sliderValue / 3.0, alpha: 1.0)
    }
    
    @IBAction func changeNumber(sender: AnyObject) {
        numberLabel.text = "\(Int(numberStepper.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sliderValue = CGFloat(slider.value)
        cosbyLabel.font = UIFont(name: cosbyLabel.font.fontName, size: 300.0 * sliderValue)
        cosbyLabel.textColor = UIColor(red: sliderValue / 1.5, green: sliderValue, blue: sliderValue / 3.0, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

