//
//  Sorter.swift
//  ArraySort
//
//  Created by Sean Robinson on 30/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Foundation

class Sorter {
    
    var sortAlgorithm: SortAlgorithm
    
    init() {
        sortAlgorithm = QuickSort()
    }
    
    func setSortAlgorithm(algorithm: SortAlgorithm) {
        sortAlgorithm = algorithm
    }
    
    func sort(arrayString: String) -> (sorted: [Int], time: NSTimeInterval) {
        if arrayString == "" {
            return ([], 0)
        }
        
        var startTime = NSDate.timeIntervalSinceReferenceDate()
        
        var sortedArray: [Int] = sortAlgorithm.sort(arrayString)
        
        var finishTime = NSDate.timeIntervalSinceReferenceDate()
        var elapsedTime : NSTimeInterval = finishTime - startTime
        
        return (sortedArray, elapsedTime)
    }
}
