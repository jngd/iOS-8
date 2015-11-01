//
//  ViewController.swift
//  T14E2JuanGarcia
//
//  Created by jgd on 20/09/15.
//  Copyright (c) 2015 jgd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var celdas : NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Load plist
        let path = NSBundle.mainBundle().bundlePath
        let finalPath = path.stringByAppendingPathComponent("PropertyList.plist")
        
        celdas = NSDictionary(contentsOfFile: finalPath)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return celdas!.count
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: nil)
  
        let cell: CeldaPersonalizadaTableViewCell = tableView.dequeueReusableCellWithIdentifier("CeldaPersonalizada") as! CeldaPersonalizadaTableViewCell
        let celda: AnyObject = celdas!.objectForKey("celda\(indexPath.row)") as! NSDictionary
        
        cell.titulo.text = celda.objectForKey("title") as? String
        cell.subtitulo.text = celda.objectForKey("subtitle") as? String
        cell.imagen.image = UIImage(named: celda.objectForKey("imagen")
            as! String)
        return cell
    }
    

}

