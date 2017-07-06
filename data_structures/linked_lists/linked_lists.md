[Back to README](../../README.md)

Linked Lists
============
A linked list is a data structure that represents a sequence of nodes.

Unlike an array, a linked list does not provide constant time access to a particular index within the list. For example, to find the `kth` element in the list, you have to iterate through all `k` elements.

The advantage of a linked list is that you can add and remove items from the beginning of the list in contant time.

Types of Linked List
--------------------
There are two main types of linked lists:
* Singly Linked List - each node points to the next node in the linked list.
* Doubly Linked List - each node points to both the next node and the previous node.

Implementing a Linked List in Ruby
----------------------------------
I have chosen the approach of separating out the `Node` class and the `LinkedList` class.

The `Node` represents each element and the `LinkedList` represents the list

### The Node Class

The `Node` is initialized with its own data point and as a pointer to the next node:

```
class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
    @val = val
    @next = next_node
  end
end
```
