//
//  ViewController.swift
//  NOtificationDemo
//
//  Created by Apple on 08/03/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBAction func btnTapped(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        content.title = "test"
        content.badge = 1
        content.subtitle = "asa adad adad adad dasd dad asd d "
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "alert", content: content, trigger: trigger)
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().add(request) { (error) in
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.sound, .alert, .badge]) { (isDone, error) in
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UNUserNotificationCenterDelegate {
    
}

