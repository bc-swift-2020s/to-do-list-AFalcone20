//
//  ViewController.swift
//  ToDoList
//
//  Created by Alexander Falcone on 2/10/20.
//  Copyright © 2020 Alexander Falcone. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var toDoArray = ["Alex", "Taylor", "David", "Mike"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    
    
}

extension ToDoListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("NumberOfRowsInSection was just called. Returning \(toDoArray.count)")
        return toDoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellForRowAt was just called for indexPath.row = \(indexPath.row)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
    
    
}
