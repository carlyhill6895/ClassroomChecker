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
    var locked              : Bool
}

class DataManager {
    
    var prototype: Int = 0
    
    static let instance = DataManager()

    static func getData(options : String) -> [Room]{
        
        let rooms = [
            Room(roomName: "A1.12", capacity: 8, hasBeamer: false, hasMediaControls: false, dimmable: false, building: "A", locked: false),
            Room(roomName: "B1.14", capacity: 100, hasBeamer: true, hasMediaControls: true, dimmable: true, building: "B", locked: false),
            Room(roomName: "A1.10", capacity: 24, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "A1.11", capacity: 48, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "A0.10", capacity: 50, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "B1.18F", capacity: 280, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "B0.201", capacity: 65, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: false),
            Room(roomName: "B0.204", capacity: 84, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "B0.206", capacity: 12, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: false),
            Room(roomName: "C1.110", capacity: 21, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "C1.112", capacity: 12, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "E0.012", capacity: 8, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: false),
            Room(roomName: "F1.10", capacity: 15, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "F2.11", capacity: 54, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "G1.12", capacity: 14, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "G3.14", capacity: 12, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "G0.08", capacity: 15, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
            Room(roomName: "F0.02", capacity: 14, hasBeamer: true, hasMediaControls: false, dimmable: true, building: "C", locked: true),
        ]
        
        return rooms
    }
    
    static func prototypeVersion () -> Int {
        return instance.prototype
    }

}
