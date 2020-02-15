
//class for the node memory block
public class Node<T> {
    var value: T
    var next: Node?
    weak var previous: Node?
    
    public init(value: T) {
        self.value = value
    }
}

//class for the linkedList
public class LinkedList<T> {
    //public typealias LinkedNode = Node<T>
    
    fileprivate var head: Node<T>?
    private var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public var last: Node<T>? {
        return tail
    }
    
    //adds the new node
    public func append(node: T) {
        var newNode = Node(value: node)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    //gets the index
    public func getIndex(node: T) {
        
    }
}


let newList = LinkedList<String>()
newList.append(node: "Hello")
newList.append(node: "World")
newList.append(node: "Galactus")

newList.first?.value
newList.last?.value
newList.head?.next?.value
