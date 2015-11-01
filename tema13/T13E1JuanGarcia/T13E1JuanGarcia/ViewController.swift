//
//  ViewController.swift
//  T13E1JuanGarcia
//
//  Created by jgd on 27/07/15.
//  Copyright (c) 2015 jgd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        var queue : NSOperationQueue = NSOperationQueue()
        
        // NSInvocationOperation is unavaliable
        
        queue.addOperationWithBlock(){
            self.loadWebs()
        }
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadWebs(){
        let urls : NSMutableArray = NSMutableArray (objects: NSURL(string: "http://www.as.com")!, NSURL(string: "http://www.marca.com")!, NSURL(string: "http://www.laopiniondemurcia.es")!, NSURL(string: "http://www.laverdad.es")!)
        
        
        for iterator: AnyObject in urls{
        
            NSData(contentsOfURL: iterator as! NSURL)
            print("Descargando \(iterator)")
        }
        
    }


}

