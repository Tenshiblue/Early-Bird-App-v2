//
//  ViewController.swift
//  Early Bird
//
//  Created by Austin on 3/6/15.
//  Copyright (c) 2015 iolanidev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myWebView: UIWebView!
    
    @IBAction func Menu(sender: AnyObject) {
        let url = NSURL(string: "http://www.iolani.org/files/pdfs/2015_march_lunch_menus.pdf")
        let requestObj = NSURLRequest(URL: url!)
        myWebView.loadRequest(requestObj)
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

