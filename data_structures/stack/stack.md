Stack
=====
A stack data structure is a stack of data. It uses LIFO (last-in first-out) ordering.

A stack does not offer constant-time access to the `ith` item. However, it does allow constant-time adds and removes.

A case where stacks are often useful is in certain recursive algoritms. Sometimes you need to push temporary data onto a stack as you recurse, but then remove them as you backtrack. A stack offers a simple way to do this.

A stack can also be used to implement a recursive algorithm iteratively.

Stack Operations
----------------
* `pop()`: Removes the top item from the stack.
* `push(item)`: Add an item to the top of the stack.
* `peek()`: Return the top of the stack.
* `empty?`: Return true if the stack is empty.
