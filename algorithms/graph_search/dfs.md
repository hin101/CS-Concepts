Depth-first search
==================
In depth-first search, we start at the root and explore each branch completely before moving on to the next branch.

Here is how we can implement depth-first search in ruby:
```
def dfs(node)
  puts node.value
  node.children.each do |child|
    dfs(child)
  end
end
```
