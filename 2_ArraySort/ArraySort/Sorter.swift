//
//  Sorter.swift
//  ArraySort
//
//  Created by Sean Robinson on 30/03/2015.
//  Copyright (c) 2015 SRobinson. All rights reserved.
//

import Foundation

class Sorter {
    
    var sortAlgorithm: SortProtocol!
    
    init() {
        sortAlgorithm = QuickSort()
    }
    
    func setSortAlgorithm(algorithm: SortProtocol) {
        sortAlgorithm = algorithm
    }
    
    func sort(array: [Int]) -> [Int] {
        return sortAlgorithm.sort(array)
    }
}
