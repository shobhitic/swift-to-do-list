//
//  ToDoList.swift
//  To Do List
//
//  Created by Shobhit Bakliwal on 27/10/17.
//  Copyright © 2017 Shobhit Bakliwal. All rights reserved.
//

import Foundation
import RealmSwift
import Realm


class ToDoList {
    static func allTasks() -> Results<ToDoListItem> {
        let realm = try! Realm()
        return realm.objects(ToDoListItem.self)
    }
}
