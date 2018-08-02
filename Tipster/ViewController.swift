//
//  ViewController.swift
//  Tipster
//  Created 4/18/15 with XCode 6.2
//  Updated 8/18/17 with XCode 8.3.3
//  Updated 8/01/18 with XCode 9.4.1

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tipLabel.text = "$0.00"
        self.totalLabel.text = "$0.00"
    }
    
    @IBAction func onEditingChanged(_ sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.20]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let tipAmount = billAmount * tipPercentage
        let total = billAmount + tipAmount;
        self.tipLabel.text = "$\(tipAmount)"
        self.totalLabel.text = "$\(total)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

