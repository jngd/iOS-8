//
//  ViewController.swift
//  T13E2JuanGarcia
//
//  Created by jgd on 27/07/15.
//  Copyright (c) 2015 jgd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var googlewebs:NSArray = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var queue : NSOperationQueue = NSOperationQueue()
        
        
        
        /*var queue = NSOperationQueue()
        var getWebsOperation = NSInvocationOperation(target: self, selector:
            "getWebs", object: nil)
        queue.addOperation(getWebsOperation)
        getWebsOperation.completionBlock = {
            var websOperation = NSInvocationOperation(target: self,
                selector: "loadWebs", object: nil)
            queue.addOperation(websOperation)*/
        
        
        // NSInvocationOperation is unavaliable //
        
        // Method to load web
        let loadWebs = NSBlockOperation(){
        
            self.loadWebs()
        }
        
        // Method to get google webs
        let getWebs = NSBlockOperation(){
            self.getWebs()
        }
        
        // Add dependencies
        loadWebs.addDependency(getWebs)
        
        // Execute operations without wait (block UI)
        queue.addOperations([loadWebs,getWebs], waitUntilFinished: false)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Get google webs
    func getWebs(){
        let languages : NSArray = ["com","ad","ae","com.af","com.ag","com.ai","am","co.ao","com.ar","as","at","com.au","az","ba","com.bd","be","bf"]
        
        var languageWebs = NSMutableArray()
        
        for(var i=0;i < languages.count; i++){
            var webString: NSString = "http://www.google.\(languages[i])"
            languageWebs.addObject(NSURL(string: webString as String)!)
        }
        googlewebs = languageWebs
    }
    
    
    // Load all webs
    func loadWebs(){
        let urls : NSMutableArray = NSMutableArray (objects: NSURL(string: "http://www.as.com")!, NSURL(string: "http://www.marca.com")!, NSURL(string: "http://www.laopiniondemurcia.es")!, NSURL(string: "http://www.laverdad.es")!)
        urls.addObjectsFromArray(googlewebs as [AnyObject])

        
        for iterator: AnyObject in urls{
            
            NSData(contentsOfURL: iterator as! NSURL)
            println("Descargando \(iterator)")
        }
        
    }
}

