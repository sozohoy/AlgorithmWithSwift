//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 한지석 on 2023/07/12.
//

import Foundation

struct Stack<T> {
    private var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()
    }
}
 
var myStack = Stack<Int>()
myStack.push(10)
myStack.pop()

