//
//  QuickSortTests.swift
//  ArraySort
//
//  Created by Sean Robinson on 31/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Cocoa
import XCTest
import ArraySort

class QuickSortTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_QuickSort_With1Entry_ReturnsSingleEntryArray() {
        let sorter = QuickSort()
        let testArray = "8"
        let output = sorter.sort(testArray)
        XCTAssertEqual(output, [8], "Array not sorted")
    }
    
    func test_QuickSort_WithEmptyString_ReturnsEmptyArray() {
        let sorter = QuickSort()
        let testArray = ""
        let output = sorter.sort(testArray)
        XCTAssertEqual(output, [], "Array not sorted")
    }
    
    func test_QuickSort_WithMultipleEntryString_ReturnsSortedArray() {
        let sorter = QuickSort()
        let testArray = "5,4,2,3,1"
        let output = sorter.sort(testArray)
        XCTAssertEqual(output, [1,2,3,4,5], "Array not sorted")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        let sorter = QuickSort()
        let testArray = "8,4,6,2,9"
        
        self.measureBlock() {
            // Put the code you want to measure the time of here.
            let output = sorter.sort(testArray)
        }
    }
    
}
