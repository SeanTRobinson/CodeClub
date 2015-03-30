//
//  ViewController.swift
//  ArraySort
//
//  Created by Sean Robinson on 29/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var inputField: NSTextField!
    @IBOutlet weak var outputField: NSTextField!
    @IBOutlet weak var timeTakenLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func sortButton(sender: AnyObject) {
    }

}

