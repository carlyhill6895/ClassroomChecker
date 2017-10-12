//
//  Prototype1ViewController.swift
//  CRChecker
//
//  Created by Rob on 05/10/2017.
//  Copyright © 2017 Lepps. All rights reserved.
//

import UIKit
import Eureka

class Prototype1ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        form +++ Section("Options")
            
            <<< PushRow<String>("building") {
                $0.title = "Building"
                $0.selectorTitle = "Choose building"
                $0.options = ["A", "B", "C", "D", "F", "G"]
            }
            
            <<< StepperRow("persons") {
                $0.title = "Persons"
                $0.value = 1
            }

            <<< DateTimeRow("time"){
                $0.title = "Time"
                $0.value = Date()
            }

            <<< MultipleSelectorRow<String>("facilities") {
                $0.title = "Facilities"
                $0.selectorTitle = "Pick desired facilities"
                $0.options = ["Beamer","Media Controls","Dimmable"]
            }
        
            +++ Section()
            <<< ButtonRow(){
                $0.title = "Find available rooms"
                }.onCellSelection{ cell in
                    self.submit()
            }
        
        
        // Do any additional setup after loading the view.
    }
    
    func submit (){
        
        // Get the value of all rows which have a Tag assigned
        // The dictionary contains the 'rowTag':value pairs.
        let valuesDictionary = form.values()
        
        performSegue(withIdentifier: "showResults", sender: self)
        
        print(valuesDictionary)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ResultsTableViewController
        destination.options = form.values()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
