//
//  ViewController.swift
//  Tipster
//
//  Created by Sarah Allen on 4/18/15.
//  Copyright (c) 2015 Ultrasaurus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var billAmount = NSString(string: billField.text).doubleValue
        var tipAmount = billAmount*0.2
        var total = billAmount + tipAmount;
        tipLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

