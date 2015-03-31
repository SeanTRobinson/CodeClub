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
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testArraySorting() {
        let sorter = Sorter()
        let testArray = "8,4,6,2,9"
        let output = sorter.sort(testArray)
        XCTAssertEqual(output.sorted, [2,4,6,8,9], "Array not sorted")
    }
    
    func test_Sort_Performance() {
        let sorter = Sorter()
        let testArray = "8,4,6,2,9"

        self.measureBlock() {
            let output = sorter.sort(testArray)
        }
    }
    
}
