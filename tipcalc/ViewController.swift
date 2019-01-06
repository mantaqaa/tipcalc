//
//  ViewController.swift
//  tipcalc
//
//  Created by Projects on 1/5/19.
//  Copyright © 2019 Projects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        
    }
    @IBAction func calculateTip(_ sender: Any)
    {
        
    let tipPercentages = [0.15, 0.2, 0.25]
    let bill = Double(billField.text!) ?? 0
    let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
    let total = bill + tip
    
    tipLabel.text = String(format: "$%.2f", tip)
    totalLabel.text = String(format: "$%.2f", total)
    }
    
}

