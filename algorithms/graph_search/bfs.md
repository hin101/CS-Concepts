Breadth-First Search
====================
We start at the root and explore each neighbor before going on to any of their children.

This is how we can implement this in ruby:
```
def bfs(node)
  queue = []
  queue.push(node)

  while(queue.size != 0)
    n = queue.shift
    puts n.value
    n.children.each do |child|
      queue.push(child)
    end
  end
end
```
### Bidirectional Search
This is used to find the shortest path between a source and destination node. It operates by running two simultaneous breadth-first searches, one from each node. When their searches collide, we have found a path.
