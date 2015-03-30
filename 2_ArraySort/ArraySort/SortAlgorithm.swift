//
//  SortProtocol.swift
//  ArraySort
//
//  Created by Sean Robinson on 30/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Foundation

class SortAlgorithm {
    
    func sort(arrayString : String) -> [Int] {
        fatalError("This method must be overridden")
    }
    
    func parseStringToArray(input : String) -> [Int] {
        let parsedStringArray = input.componentsSeparatedByString(",")
        var parsedIntArray: [Int] = []
        for string in parsedStringArray {
            var newInt = string.toInt()
            parsedIntArray.append(newInt!)
        }
        
        return parsedIntArray
    }
}
