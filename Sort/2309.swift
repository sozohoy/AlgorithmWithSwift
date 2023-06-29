//
//  2309.swift
//  AlgorithmWithSwift
//
//  Created by 한지석 on 2023/06/29.
//

import Foundation

var fake = [0, 0]
var array: [Int] = []
var result = 0

while let input = readLine(), !input.isEmpty {
    if let number = Int(input) {
        array.append(number)
        result += number
    }
}

array.sort()
result -= 100

for i in 0...7 {
    for j in i + 1...8 {
        if array[i] + array[j] == result {
            fake[0] = array[i]
            fake[1] = array[j]
            break
        }
    }
}

for i in 0..<array.count {
    if array[i] != fake[0] && array[i] != fake[1] {
        print(array[i])
    }
}
