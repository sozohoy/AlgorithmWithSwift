//
//  2751.swift
//  AlgorithmWithSwift
//
//  Created by 한지석 on 2023/06/30.
//

import Foundation

var array: [Int] = []
let n = Int(readLine()!)!

for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

array.sort()

for i in 0..<array.count {
    print(array[i])
}

// QuickSort를 직접 구현하여 채점 해봤을 때 시간초과가 뜸. 이유가 뭘까?
//func quickSort(_ array: inout [Int], _ low: Int, _ high: Int) {
//    if low < high {
//        let pivot = partition(&array, low, high)
//        quickSort(&array, low, pivot - 1)
//        quickSort(&array, pivot + 1, high)
//    }
//}
//
//func partition(_ array: inout [Int], _ low: Int, _ high: Int) -> Int {
//    let pivot = array[high]
//    var i = low
//    for j in low..<high {
//        if array[j] <= pivot {
//            array.swapAt(i, j)
//            i += 1
//        }
//    }
//    array.swapAt(i, high)
//    return i
//}
//
//quickSort(&array, 0, array.count - 1)
