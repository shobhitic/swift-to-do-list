//
//  ToDoListItem.swift
//  To Do List
//
//  Created by Shobhit Bakliwal on 26/10/17.
//  Copyright © 2017 Shobhit Bakliwal. All rights reserved.
//

import Foundation

class ToDoListItem {
    //MARK: Properties
    var name: String
    var completed: Bool
    
    //MARK: Initialization
    init(name: String) {
        self.name = name
        self.completed = false
    }
}
