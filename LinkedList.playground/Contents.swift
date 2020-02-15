class Node {
    var id: Int
    var next: Node?
    var prev: Node?
    
    init(id: Int) {
        self.id = id
    }
}

class LinkedList {
    
    private var head: Node?
    private var tail: Node?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var last: Node? {
        return tail
    }
    
    var first: Node? {
        return head
    }
    
    public func append(nodeId: Int) {
        var newNode = Node.init(id: nodeId)
        
        if let tailNode = tail {
            tailNode.next = newNode
            newNode.prev = tailNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    public func getIndex(nodeID: Int) {
        var index = 1
        var tempNode = head
        
//        if let headNode = head {
//            if nodeID == headNode.id {
//                print("It is head which is index \(index)")
//            } else {
//                index += 1
//            }
//        } else {
//            tempNode = head?.next
//            if tempNode?.id == nodeID {
//                print("found, index is \(index)")
//            } else {
//                index += 1
//            }
//        }
        
        while tempNode != nil {
            if tempNode?.id == nodeID {
                print("It is head which is index \(index)")
                return
            } else {
                index += 1
                tempNode = tempNode?.next
                if tempNode?.id == nodeID {
                    print("which is index \(index)")
                    return
                }
            }
        }
        
    }
}

var list = LinkedList()
list.append(nodeId: 1)
list.append(nodeId: 2)
list.append(nodeId: 3)
list.append(nodeId: 4)
list.append(nodeId: 5)

list.getIndex(nodeID: 3)

list.last?.prev?.id
