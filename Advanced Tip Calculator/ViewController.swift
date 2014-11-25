//
//  ViewController.swift
//  Advanced Tip Calculator
//
//  Created by jordan on 24/11/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mealCostTextField: UITextField!
    @IBOutlet weak var foodScoreSlider: UISlider!
    @IBOutlet weak var serviceScoreSlider: UISlider!
    @IBOutlet weak var tipAnswerLabel: UILabel!
    var tipPercent: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTipButton(sender: AnyObject) {
        calculateTipPercent()
        calculateTip()
    }
    func calculateTipPercent() {
        tipPercent = (foodScoreSlider.value + serviceScoreSlider.value)/10
    }
    func calculateTip() {
        var mealCostAsNSString: NSString = mealCostTextField.text
        var mealCost = mealCostAsNSString.floatValue
        var ans = mealCost * tipPercent
        
        tipAnswerLabel.text = "$" + NSString(format: "%0.2f", ans)
        tipAnswerLabel.hidden = false
    }
}

