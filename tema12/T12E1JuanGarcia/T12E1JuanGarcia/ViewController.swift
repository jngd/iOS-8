//
//  ViewController.swift
//  T12E1JuanGarcia
//
//  Created by jgd on 26/07/15.
//  Copyright (c) 2015 jgd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tag: UILabel!
    @IBOutlet weak var tag2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self,selector: "actualizarInterfaz:" ,name:UIApplicationWillEnterForegroundNotification, object:nil)
    }
    func actualizarInterfaz(notification: NSNotification){
        println("VOLVEMOS CON NOTIFICATION")
        tag2.text = "Volvemos con notification"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

