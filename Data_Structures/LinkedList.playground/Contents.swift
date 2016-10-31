public class LinkedListNode<T> {
    
    var value: T
    var next: LinkedListNode?
    weak var previous: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = LinkedListNode<T>
    
    private var head: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        if var node = head {
            while case let next? = node.next {
                node = next
            }
            return node
        } else {
            return nil
        }
    }
    
    public func insert(value: T, atIndex index: Int) {
        let (previous, next) = nodesBeforeAndAfter(index: index)
        
        let newNode = Node(value: value)
        newNode.previous = previous
        newNode.next = next
        previous?.next = newNode
        next?.previous = newNode
        
        if previous == nil {
            head = newNode
        }
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    public var count: Int {
        if var node = head {
            var counter = 1
            
            while case let next? = node.next {
                node = next
                counter += 1
            }
            return counter
        } else {
            return 0
        }
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            
            while node != nil {
                if i == 0 {
                    return node
                }
                
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    
    public func nodesBeforeAndAfter(index: Int) -> (Node?, Node?) {
        assert(index >= 0)
        
        var i = index
        var next = head
        var previous: Node?
        
        while next != nil && i > 0 {
            i -= 1
            previous = next
            next = next?.next
        }
        
        assert(i == 0)
        
        return (previous, next)
    }
    
    public func remove(node: Node) -> T {
        let previous = node.previous
        let next = node.next
        
        if let previous = previous {
            previous.next = next
        } else {
            head = next
        }
        
        next?.previous = previous
        node.previous = nil
        node.next = nil
        
        return node.value
    }
    
    public func removeAll() {
        head = nil
    }
}

let list = LinkedList<String>()
list.isEmpty
list.first

list.append(value: "Hello")
list.isEmpty
list.first?.value

list.append(value: "Lady!")
list.first?.value
list.last?.value
list.last?.next?.value

list.count

list.nodeAt(index: 0)?.value
list.nodeAt(index: 1)?.value
list.nodeAt(index: 7)?.value

list.insert(value: "Test Insert method", atIndex: 1)
list.nodeAt(index: 1)?.value

list.remove(node: list.first!)
list.count

list.removeAll()
list.count
