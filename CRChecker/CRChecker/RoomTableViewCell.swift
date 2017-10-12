//
//  RoomTableViewCell.swift
//  CRChecker
//
//  Created by Rob on 05/10/2017.
//  Copyright © 2017 Lepps. All rights reserved.
//

import UIKit

class RoomTableViewCell: UITableViewCell {

    @IBOutlet weak var roomLabel: UILabel!
    @IBOutlet weak var capacityLabel: UILabel!
    
    @IBOutlet weak var lockedImageView: UIImageView!
    
    var room : Room? = nil{
        didSet{
            roomLabel.text = room!.roomName
            let capacity = room!.capacity
            capacityLabel.text = "Capacity : \(capacity)"
            if DataManager.prototypeVersion() == 2{
                lockedImageView.isHidden = !room!.locked
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
