//
//  ResultsTableViewController.swift
//  CRChecker
//
//  Created by Rob on 05/10/2017.
//  Copyright © 2017 Lepps. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    var options: [String:Any?] = [:]
    
    var rooms = DataManager.getData(options: "test")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // filter based on building
        if let building = options["building"] as? String{
            rooms = rooms.filter { room in
                return room.roomName.hasPrefix(building)
            }
        }
        
        // filter based on capacity
        if let capacity = options["persons"] as? Double{
            print("we have a capacity set", capacity)
            rooms = rooms.filter { room in
                return Double(room.capacity) > capacity
            }
        }
        
        
        
        let nib = UINib(nibName: "RoomTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "roomCell")


        print("Options: ", options)
        
        tableView.rowHeight = 56
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rooms.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "roomCell", for: indexPath) as! RoomTableViewCell

        cell.room = rooms[indexPath.row]

        return cell
    }


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if rooms[indexPath.row].locked && DataManager.prototypeVersion() == 2{
            showLockedAlert()
        }
    }

    func showLockedAlert(){
        let alertController = UIAlertController(title: "Room locked", message: "Would you like to unlock this room?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { action in
            // ...
        }
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true) {
            
        }
    }
    
    
}
