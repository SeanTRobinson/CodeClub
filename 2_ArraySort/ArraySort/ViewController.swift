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
    
    var sorter : Sorter

    required init?(coder aDecoder: NSCoder) {
        sorter = Sorter()
        super.init(coder: aDecoder)
    }
    
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
        var arrayString = inputField.stringValue
        let output = sorter.sort(arrayString)
        outputField.stringValue = output.sorted.description
        timeTakenLabel.stringValue = output.time.description
    }

}

