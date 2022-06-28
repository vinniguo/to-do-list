//
//  CompleteToDoViewController.swift
//  to-do list
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoListTableViewController()
    var selectedToDo = ToDo()

  @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
      super.viewDidLoad()

      titleLabel.text = selectedToDo.name
    }
    

  @IBAction func completeTapped(_ sender: Any) {
  }
    

}
