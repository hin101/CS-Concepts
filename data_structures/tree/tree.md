Tree
====
A tree is a data structure composed of nodes.
* Each node has a root node.
* The root node has zero or more child nodes.
* Each child node has zero or more child nodes, and so on.

### Binary Trees
A binary tree is a tree in which each node has up to two childen.

### Binary Search Tree
A binary search tree is a tree where, for each node, its left descendents are less than or equal to the current node, which is less than the right descendents.

### Complete Binary Trees
A complete binary tree is a binary tree in which every level of the tree is fully filled.

### Full Binary Trees
A full binary tree is a binary tree in which each node has either zero or two children

### Perfect Binary Trees
A perfect binary tree is one that is both full and complete.

Min-Heaps
---------
A min-heap is a complete binary tree where each node is smaller than its children. The root is the minimum element in the tree.

There are two main operations on a min-heap `insert` and `extract_min`

#### `insert`
We always start by inserting the element at the bottom. Then, we fix the tree by swapping the new element with its parents, until we find the correct spot for the element.

This takes `O(log n)` time, `n` is the number of nodes in the heap.

#### `extract_min`
This method removes the minimum element.

We remove the minimum element and swap it with the last element in the heap. Then, we bubble down this element, swapping it with one of its children until the min-heap property is restored.
