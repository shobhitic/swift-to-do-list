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
    
    var task: ToDoListItem?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTask(task: ToDoListItem) {
        self.task = task

        taskNameLabel.text = task.name
        taskCompleteSwitch.isOn = task.completed
        
        taskCompleteSwitch.addTarget(self, action: #selector(ToDoItemTableViewCell.taskCompleted(completeSwitch:)), for: .valueChanged)
    }
    
    @objc func taskCompleted(completeSwitch: UISwitch) {
        let isCompelete = completeSwitch.isOn
        // Do something
        task?.completed = isCompelete
    }

}
