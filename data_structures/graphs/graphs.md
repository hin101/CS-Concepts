Graphs
======
A graph is simply a collection of nodes with edges between them.

A graph can be either directed or undirected. Directed edges are like a one-way street and undirected edges are like a two-way street.

A graph may consist of multiple-isolated subgraphs. If there is a path between each pair of vertices, it is called a "connected graph".

A graph can also have cycles.

### Adjacency List
This is the most common way to represent a graph.

Each vertex/node stores a list of adjacent verticies. In an undirected graph, an edge like (a, b) would be stored twice: once in a's adjacent vertices and once in b's adjacent verticies.

### Adjacency Matrices
This is an `NxN` boolean matrix (where `n` is the number of nodes), where a `true` value at `matrix[i][j]` indicates an edge from node `i` to node `j`.

In an undirected graph, an adjacency matrix will be symmetric.
