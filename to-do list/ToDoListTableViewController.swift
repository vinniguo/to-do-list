//
//  ToDoListTableViewController.swift
//  to-do list
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
  
    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
        
    } // END OF VIEWDIDLOAD FUNCTION
    
    func createToDos() -> [ToDo]{
        let swift = ToDo()
        swift.name = "show everyibe we know Swift"
        swift.important = true

        let cat = ToDo()
        cat.name = "Let the Cat out"
        cat.important = true
        // important is set to false by default

        return [swift, cat]
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let toDo = toDos[indexPath.row]
        
        if toDo.important{
            cell.textLabel?.text = "🤘" + toDo.name
        } else{
            cell.textLabel?.text = toDo.name
        }

        
      return cell
    }

}
