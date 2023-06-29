//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 한지석 on 2023/06/29.
//

import Foundation

func quickSort(_ array: inout [Int], _ low: Int, _ high: Int) {
    if low < high {
        let pivotIndex = partition(&array, low, high)
        quickSort(&array, low, pivotIndex - 1)
        quickSort(&array, pivotIndex + 1, high)
    }
}

// Partition Function
func partition(_ array: inout [Int], _ low: Int, _ high: Int) -> Int {
    let pivot = array[high]  // 피벗은 배열의 마지막 값으로 설정합니다.
    var i = low  // i는 피벗보다 작거나 같은 값이 위치해야 하는 인덱스를 가리킵니다.
    for j in low..<high {
        if array[j] <= pivot {  // 현재 값이 피벗보다 작거나 같으면
            array.swapAt(i, j)  // i와 j 인덱스의 값을 교환하고 i를 증가시킵니다.
            i += 1
        }
    }
    array.swapAt(i, high)  // i 인덱스의 값과 피벗 값을 교환합니다.
    return i  // 피벗의 최종 위치(인덱스)를 반환합니다.
}

var array = [4, 1, 3, 2, 1, 2, 4, 3]
print("Original Array: \(array)")
quickSort(&array, 0, array.count - 1)
print("Sorted Array: \(array)")

/// 고차함수를 사용하는 경우
func quickSortUseFilter(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
 
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSortUseFilter(left) + [pivot] + quickSortUseFilter(right)
}

    
