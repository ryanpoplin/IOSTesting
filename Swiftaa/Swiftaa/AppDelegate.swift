//
//  AppDelegate.swift
//  Swiftaa
//
//  Created by Byrdann Fox on 6/18/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        
        // Override point for customization after application launch.
        
        /*

        LANGUAGE TESTING BELOW...

        */
        
        var excepAppsString = "Ready to go..."
        
        // println(excepAppsString)
        
        let aConst = 24
        
        let anoConst: Int = 24
        
        // println(aConst)
        
        // println(anoConst)
        
        // Here's a test array...
        var testArray = ["Timer...", "AAC...", "Another..."]
        
        // Here's a test dictionary...
        var testDictionary = ["ColorOne":"Green", "ColorTwo":"Yellow", "ColorThree":"Red"]
        
        // println(testArray)
        
        // println(testDictionary)
        
        // let === a constant...
        // var === a variable...
        
        // a constant has to be defined at least once...
        
        var anotherTestingVariable = 23
        anotherTestingVariable = 24
        let anotherTestingConstant = 24
        
        // compiler will assume a type...
        // a.k.a. type inference...
        let testInt = 70
        let testFloat = 70.0
        let testDoubleConst: Double = 70
        var testDoubleVar: Double = 24
        
        // testing error...
        // so the compiler will convert 4 into 4.0?...
        let errorConst: Float = 4
        
        let label = "The width is "
        let width = 24
        let widthLabel = label + String(width)
        println(widthLabel)
        let intToString = 25555
        // === could not find an overload for '+' that accepts the supplied args...
        // let anotherLabel = label + intToString
        
        let apples = 3
        let oranges = 5
        // The best way to get values into strings...
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit..."
        
        // println("ExcepApps utilizes IOS, Xcode, and Swift to create applications for individuals diagnosed with Autism.")
        
        return true
    
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

