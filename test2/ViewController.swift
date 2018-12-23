//
//  ViewController.swift
//  test2
//
//  Created by Rebecca Saw on 23/12/2018.
//  Copyright © 2018 Rebecca Saw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    
    
    @IBAction func StartButtonPress(_ sender: Any) {
        locationLabel.text="Location: Chemistry"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("console log successful")
    }


}

