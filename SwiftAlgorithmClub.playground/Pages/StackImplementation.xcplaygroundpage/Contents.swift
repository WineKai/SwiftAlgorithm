//: [Previous](@previous)

import Foundation


struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    // 1
    mutating func push(_ element: Element) {
        // 2
        array.append(element)
    }
    
    // 1
    mutating func pop() -> Element? {
        // 2
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
}
// 1
extension Stack: CustomStringConvertible {
    // 2
    var description: String {
        // 3
        let topDivider = "-----Stack---\n"
        let bottomDivider = "\n----------\n"
        
        // 4
        //        let stackElements = array.reversed().joined(separator: "\n")
        let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
        // 5
        return topDivider + stackElements + bottomDivider
    }
}

var rwBookStack = Stack<String>()
rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")
rwBookStack.push("iOS Apprentice")
rwBookStack.push("Swift Apprentice")
print(rwBookStack)
