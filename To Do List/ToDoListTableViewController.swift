//
//  ToDoListTableViewController.swift
//  To Do List
//
//  Created by Shobhit Bakliwal on 26/10/17.
//  Copyright © 2017 Shobhit Bakliwal. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    var tasks = [ToDoListItem]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        for task in ToDoList.allTasks() {
            tasks.append(task)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "ToDoItemTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ToDoItemTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ToDoItemTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let task = tasks[indexPath.row]
        
        cell.setTask(task: task)
        
        return cell
    }
    
    @IBAction func unwindToTaskList(sender: UIStoryboardSegue) {
        if let source = sender.source as? AddItemViewController, let task = source.task {
            
            // Add a new task.
            let newIndexPath = IndexPath(row: tasks.count, section: 0)
            
            tasks.append(task)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
}
