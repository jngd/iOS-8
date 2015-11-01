//
//  AppDelegate.swift
//  T12E1JuanGarcia
//
//  Created by jgd on 26/07/15.
//  Copyright (c) 2015 jgd. All rights reserved.
//

import UIKit

// For debug pruposes
func pretty_function(file:String = __FILE__, function:String = __FUNCTION__, line:Int = __LINE__){
    println("file:\(file.lastPathComponent) function:\(function) line:\(line)")
}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        pretty_function()
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        pretty_function()
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        pretty_function()
        for i in 0...10000{
            println("\(i)")
        }

        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        pretty_function()
        (self.window?.rootViewController as! ViewController).tag.text = "Vuelvo de segundo plano"

        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        pretty_function()
        // Refresh UI
    }

    func applicationWillTerminate(application: UIApplication) {
        pretty_function()
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

