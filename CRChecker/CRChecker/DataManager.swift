//
//  DataManager.swift
//  CRChecker
//
//  Created by Rob on 05/10/2017.
//  Copyright © 2017 Lepps. All rights reserved.
//

import Foundation

struct Room{
    var roomName            : String
    var capacity            : Int
    var hasBeamer           : Bool
    var hasMediaControls    : Bool
    var dimmable            : Bool
    var building            : String
}

class DataManager {

    static func getData(options : String) -> [Room]{
        
        let rooms = [
            Room(roomName: "A1.12", capacity: 8, hasBeamer: false, hasMediaControls: false, dimmable: false, building: "A"),
            Room(roomName: "B1.14", capacity: 100, hasBeamer: true, hasMediaControls: true, dimmable: true, building: "B"),
            Room(roomName: "C1.110", capacity: 280, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C")
        ]
        
        return rooms
    }
}
