//
//  MainViewController.swift
//  CRChecker
//
//  Created by Rob on 11/10/2017.
//  Copyright © 2017 Lepps. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func prototypeOnePressed(_ sender: UIButton) {
        DataManager.instance.prototype = 1
    }
    
    @IBAction func prototypeTwoPressed(_ sender: UIButton) {
        DataManager.instance.prototype = 2
    }
    
    
}
