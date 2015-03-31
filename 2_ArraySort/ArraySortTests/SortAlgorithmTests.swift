//
//  SortAlgorithmTests.swift
//  ArraySort
//
//  Created by Sean Robinson on 31/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Cocoa
import XCTest
import ArraySort

class SortAlgorithmTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_parseStringToArray_WithEmptyString_ReturnsEmptyString() {
        let sorter = SortAlgorithm()
        let testArray = ""
        let output = sorter.parseStringToArray(testArray)
        XCTAssertEqual(output, [], "Array not sorted")
    }
    
    func test_parseStringToArray_WithSingleInt_ReturnsSingleEntryArray() {
        let sorter = SortAlgorithm()
        let testArray = "5"
        let output = sorter.parseStringToArray(testArray)
        XCTAssertEqual(output, [5], "Array not sorted")
    }
    
    func test_parseStringToArray_WithSingleChar_ReturnsEmptyString() {
        let sorter = SortAlgorithm()
        let testArray = "g"
        let output = sorter.parseStringToArray(testArray)
        XCTAssertEqual(output, [], "Array not sorted")
    }
    
    func test_parseStringToArray_WithMixedCharAndInt_ReturnsArrayWithOnlyInts() {
        let sorter = SortAlgorithm()
        let testArray = "5,4,h,2,o,3,1"
        let output = sorter.parseStringToArray(testArray)
        XCTAssertEqual(output, [5,4,2,3,1], "Array not sorted")
    }
}
