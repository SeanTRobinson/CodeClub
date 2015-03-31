//
//  ArraySortTests.swift
//  ArraySortTests
//
//  Created by Sean Robinson on 29/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Cocoa
import XCTest
import ArraySort

class ArraySortTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testArraySorting() {
        let sorter = Sorter()
        let testArray = "8,4,6,2,9"
        let output = sorter.sort(testArray)
        XCTAssertEqual(output.sorted, [2,4,6,8,9], "Array not sorted")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        let sorter = Sorter()
        let testArray = "8,4,6,2,9"

        self.measureBlock() {
            // Put the code you want to measure the time of here.
            let output = sorter.sort(testArray)
        }
    }
    
}
