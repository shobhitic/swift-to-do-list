//
//  ToDoItemTableViewCell.swift
//  To Do List
//
//  Created by Shobhit Bakliwal on 26/10/17.
//  Copyright © 2017 Shobhit Bakliwal. All rights reserved.
//

import UIKit

class ToDoItemTableViewCell: UITableViewCell {
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var taskCompleteSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
