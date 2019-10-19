import UIKit

class Node<Value> {
    var value: Value
    var next: Node<Value>?
    
    init(_ value: Value, _ next: Node<Value>? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else { return "\(value) -> nil" }
        return"\(value) -> \(next)"
    }
}

var node5 = Node(5)
var node4 = Node(4, node5)
var node3 = Node(3, node4)
var node2 = Node(2, node3)
var node1 = Node(1, node2)

print(node1)


func reverse(_ node: Node<Int>?) -> Node<Int>? {
    var current = node
    var next: Node<Int>? = nil
    var previous: Node<Int>? = nil
    
    while current != nil {
        next = current?.next
        current?.next = previous
        previous = current
        current = next
    }
    
    return previous
}

print(reverse(node1)!)
