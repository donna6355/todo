//
//  ViewController.swift
//  todo
//
//  Created by Donna on 2022/06/24.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["clean bathroom", "say hello to Isaac","Pack my bag"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Don't need to connect IBOutlet or delegate, datasource.... UITableViewController handles them behind!
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

}

