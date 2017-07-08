module DirectedGraph
  class Node
    attr_reader :name

    def initialize(name)
      @name = name
      @successors = []
    end

    def add_edge(successor)
      @successors << successor
    end

    def to_s
      "#{@name} -> [#{@successors.map(&:name).join(' ')}]"
    end
  end

  class Graph
    def initialize
      @nodes = {}
    end

    def add_node(node)
      @nodes[node.name] = node
    end

    def add_edge(predecessor_name, successor_name)
      @nodes[predecessor_name].add_edge(@nodes[successor_name])
    end

    def [](name)
      @nodes[name]
    end
  end
end

graph = DirectedGraph::Graph.new
graph.add_node(DirectedGraph::Node.new(:a))
graph.add_node(DirectedGraph::Node.new(:b))
graph.add_node(DirectedGraph::Node.new(:c))
graph.add_edge(:a, :b)
graph.add_edge(:b, :c)
graph.add_edge(:c, :a)
puts graph[:a]
