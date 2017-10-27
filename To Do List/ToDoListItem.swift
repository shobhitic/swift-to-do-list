//
//  ToDoListItem.swift
//  To Do List
//
//  Created by Shobhit Bakliwal on 26/10/17.
//  Copyright © 2017 Shobhit Bakliwal. All rights reserved.
//

import Foundation
import RealmSwift
import Realm


class ToDoListItem: Object {
    //MARK: Properties
    @objc dynamic var id = 0
    @objc dynamic var name: String = ""
    @objc dynamic var completed: Bool = false
    
    //MARK: Initialization
    required init() {
        super.init()
    }
    
    required init(value: Any, schema: RLMSchema) {
        super.init(value: value, schema: schema)
    }
    
    required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    //MARK: DB Operations
    func save() {
        let realm = try! Realm()
        
        if id > 0 {
            try! realm.write {
                realm.add(self, update: true)
            }
        } else {
            try! realm.write {
                id = incrementID()
                realm.add(self)
            }
        }
    }
    
    func incrementID() -> Int {
        let realm = try! Realm()
        return (realm.objects(ToDoListItem.self).max(ofProperty: "id") as Int? ?? 0) + 1
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
