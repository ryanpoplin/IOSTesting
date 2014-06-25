//
//  ViewController.swift
//  Swiftaa
//
//  Created by Byrdann Fox on 6/18/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

import UIKit

// press control and drag from the view to the view controller... 
// this allows access to the delegate and dataSource...

// the class/s we are modifiying...
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // could be the length of an array controller...
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        // return 10 rows in the section within the table view...
        return 10
    }
    
    // create a new instance of UITableViewCell...called cell...
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        
        cell.text = "Row #\(indexPath.row)"
        cell.detailTextLabel.text = "Subtitle #\(indexPath.row)"
        
        return cell
    
    }
    
}

