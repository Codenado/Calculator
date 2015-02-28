//
//  ViewController.swift
//  Calculator
//
//  Created by Jeffrey Leonard on 2/21/15.
//  Copyright (c) 2015 Jeffrey Leonard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
  
    @IBOutlet weak var value: UILabel!
    let caculator = Calculator()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func testing(sender: AnyObject) {
        caculator.getInput(sender.tag)
        value.text = caculator.returnDisplay()
    }
}

