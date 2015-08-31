//
//  ViewController.swift
//  SwiftFirstBeta6
//
//  Created by Serg on 8/30/15.
//  Copyright © 2015 sdbwebsolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let possibleNumber = "23434"
        let convertedNumber = Int(possibleNumber)
        
        print("The Converted number is \(convertedNumber)")
        
        print("test print", separator: "myseparator", terminator: "-")
        
        print("Another test print", separator: "", terminator: "**")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

