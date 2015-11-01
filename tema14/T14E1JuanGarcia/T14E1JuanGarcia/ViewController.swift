//
//  ViewController.swift
//  T14E1JuanGarcia
//
//  Created by jgd on 20/09/15.
//  Copyright (c) 2015 jgd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell = UITableViewCell (style: UITableViewCellStyle.Subtitle, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Texto de la celda"
        cell.detailTextLabel?.text = "Subtitulo de la celda"
        cell.imageView?.image = UIImage(named: "picture1.jpg")
        return cell;
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Cabecera"
    }
    
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Pie de tabla"
    }
    

}

