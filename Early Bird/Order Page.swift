//
//  Order Page.swift
//  Early Bird
//
//  Created by student on 3/19/15.
//  Copyright (c) 2015 iolanidev. All rights reserved.
//

import UIKit

class orderPage: UIViewController {
   
    @IBAction func _buttonPressed() {
        // === THE ONLY THING THAT NEEDS CHANGING BASED ON ORDERS IS THE SECOND STRING HERE ("chicken") === //
        var parameters = ["order" : "chicken", "ID" : "10556"] as Dictionary<String, String>
        
        let url = NSURL(string: "http://localhost:8888")
        var session = NSURLSession.sharedSession()
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"
        
        var err: NSError?
        
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(parameters, options: nil, error: &err)
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            var strData = NSString(data: data, encoding: NSUTF8StringEncoding)
            var err: NSError?
            var json = NSJSONSerialization.JSONObjectWithData(data, options: .MutableLeaves, error: &err) as? NSDictionary
            
            if (err != nil) { //If there's an error...
                let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
            } else {
                if let parseJSON = json {
                    var success = parseJSON["success"] as? Int
                } else {
                    let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
                }
            }
        })
        
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


