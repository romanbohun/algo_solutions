//Reverse a singly linked list.
//
///Example:
///
///Input: 1->2->3->4->5->NULL
///Output: 5->4->3->2->1->NULL
///Follow up:
///
///A linked list can be reversed either iteratively or recursively. Could you implement both?

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    guard head?.next != nil else {
        return head
    }

    var currentNode = head?.next?.next
    var result: ListNode? = head?.next
    result?.next = head
    head?.next = nil
    while currentNode != nil {
        let tmp = currentNode
        currentNode = currentNode?.next
        tmp?.next = result
        result = tmp
    }

    return result
}
