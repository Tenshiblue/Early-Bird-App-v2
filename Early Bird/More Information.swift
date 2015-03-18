//
//  More Information.swift
//  Early Bird
//
//  Created by student on 3/18/15.
//  Copyright (c) 2015 iolanidev. All rights reserved.
//

import UIKit

class moreInformation: UIViewController {
    
    @IBOutlet var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        func Menu() {
            let url = NSURL(string: "http://www.iolani.org/files/pdfs/2015_march_lunch_menus.pdf")
            let requestObj = NSURLRequest(URL: url!)
            myWebView.loadRequest(requestObj)
        }
        Menu()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

