//
//  ViewController.swift
//  LimitCellSelectDemo
//
//  Created by jeasung.lee on 2017. 8. 10..
//  Copyright © 2017년 jeasung.lee. All rights reserved.
//

import UIKit
import LimitCellSelect

class ViewController: UITableViewController {
    @IBOutlet var cell1: UITableViewCell!
    @IBOutlet var cell2: UITableViewCell!
    @IBOutlet var cell3: UITableViewCell!
    @IBOutlet var cell4: UITableViewCell!
    @IBOutlet var cell5: UITableViewCell!
    var limitCellSelect: LimitCellSelect!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         limitCellSelect = LimitCellSelect.init(limit: 3, defaultIndex: [0,2])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "reuseIdentifier")
        cell.textLabel?.text = "#\(indexPath.row)"
        
        limitCellSelect.set(cell: cell, row: indexPath.row)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell  = tableView.cellForRow(at: indexPath) else { return }
        limitCellSelect.on(cell: cell, row: indexPath.row)
        print(limitCellSelect.selectCells())
    }
}

