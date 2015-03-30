//
//  QuickSort.swift
//  ArraySort
//
//  Created by Sean Robinson on 30/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Foundation

class QuickSort : SortAlgorithm {
    
    override func sort(arrayString : String) -> [Int] {
        var array = parseStringToArray(arrayString)
        var sortedArray = quicksort(array)
        return sortedArray
    }
    
    func quicksort(var list: [Int]) -> [Int] {
        if list.count <= 1 {
            return list
        }
        
        let pivot = list.removeAtIndex(0)
        return quicksort(list.filter { $0 <= pivot }) + [pivot] + quicksort(list.filter { $0 >  pivot })
    }
    
}
