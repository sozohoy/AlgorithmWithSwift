//
//  BubbleSort.swift
//  AlgorithmWithSwift
//
//  Created by 한지석 on 2023/07/04.
//

import Foundation

func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    var isSwapped: Bool
    
    for i in 0..<n {
        isSwapped = false
        
        for j in 0..<n-i-1 {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
                isSwapped = true
            }
        }
        
        if !isSwapped {
            // If no swapping occurred in the inner loop, the array is already sorted
            break
        }
    }
}

// Example usage
var array = [64, 34, 25, 12, 22, 11, 90]
bubbleSort(&array)
print(array) // Output: [11, 12, 22, 25, 34, 64, 90]
